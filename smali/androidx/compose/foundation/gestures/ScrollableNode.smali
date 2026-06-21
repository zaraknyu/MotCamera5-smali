.class public final Landroidx/compose/foundation/gestures/ScrollableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/PointerInputModifierNode;


# instance fields
.field public canDrag:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

.field public channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

.field public final defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

.field public dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field public enabled:Z

.field public flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public isListeningForEvents:Z

.field public mouseWheelScrollingLogic:Lcom/motorola/camera/fsm/camera/CameraState$1;

.field public final nestedScrollConnection:Lcom/motorola/camera/ui/DownUpDetector;

.field public final nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field public orientationLock:Landroidx/compose/foundation/gestures/Orientation;

.field public overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

.field public scrollByAction:Landroidx/compose/animation/core/InfiniteTransition$run$2;

.field public scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;

.field public final scrollableContainerNode:Landroidx/compose/foundation/gestures/ScrollableContainerNode;

.field public final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V
    .locals 9

    move/from16 v8, p7

    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    iput-boolean v8, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    move-object v0, p6

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    new-instance v6, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    iput-object v6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-boolean v8, v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->enabled:Z

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableContainerNode:Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    new-instance v0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableKt;->UnityDensity:Landroidx/compose/foundation/gestures/ScrollableKt$UnityDensity$1;

    new-instance v2, Landroidx/room/ObservedTableVersions;

    invoke-direct {v2, v1}, Landroidx/room/ObservedTableVersions;-><init>(Landroidx/compose/ui/unit/Density;)V

    new-instance v1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    invoke-direct {v1, v2}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-nez v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    new-instance v7, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    move-object v4, p4

    move-object v1, p5

    move/from16 v5, p8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    new-instance v1, Lcom/motorola/camera/ui/DownUpDetector;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v8, v2}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Ljava/lang/Object;ZI)V

    iput-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Lcom/motorola/camera/ui/DownUpDetector;

    new-instance v2, Landroidx/compose/foundation/gestures/ContentInViewNode;

    invoke-direct {v2, p4, v0, v5, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-direct {v0, v1, v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(ILkotlin/jvm/functions/Function2;I)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object v2, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/gestures/ContentInViewNode;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    new-instance v0, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    new-instance v1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object v1, v0, Landroidx/compose/foundation/FocusedBoundsObserverNode;->onPositioned:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method public static final access$processDragCancel(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->L$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v2, :cond_3

    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v5, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->L$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    invoke-virtual {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_4
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableNode$onDragStopped$1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/compose/foundation/gestures/ScrollableNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v3, v3, v0, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final access$processDragStart(Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$2:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v2, :cond_4

    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    invoke-virtual {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v2, :cond_6

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$2:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    invoke-virtual {v2, p2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, p0

    move-object p0, p2

    :goto_3
    move-object p2, p0

    move-object p0, v0

    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-wide p0, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->startPoint:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final access$processDragStop(Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$1:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v2, :cond_3

    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$1:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    invoke-virtual {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_4
    iget-wide p1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->velocity:J

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableNode$onDragStopped$1;

    invoke-direct {v1, p0, p1, p2, v3}, Landroidx/compose/foundation/gestures/ScrollableNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Landroidx/compose/animation/core/InfiniteTransition$run$2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Landroidx/compose/animation/core/InfiniteTransition$run$2;

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/Continuation;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Landroidx/compose/animation/core/InfiniteTransition$run$2;

    if-eqz v0, :cond_2

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v3, v1, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;

    if-eqz p0, :cond_3

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollByOffset:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final disposeInteractionSource$1()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_1
    return-void
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttach()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/room/ObservedTableVersions;

    invoke-direct {v2, v0}, Landroidx/room/ObservedTableVersions;-><init>(Landroidx/compose/ui/unit/Density;)V

    new-instance v0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    invoke-direct {v0, v2}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    iput-object v0, v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Lcom/motorola/camera/fsm/camera/CameraState$1;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onCancelPointerInput()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->onCancelPointerInput()V

    :cond_0
    return-void
.end method

.method public final onDensityChange()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->onCancelPointerInput()V

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/room/ObservedTableVersions;

    invoke-direct {v2, v0}, Landroidx/room/ObservedTableVersions;-><init>(Landroidx/compose/ui/unit/Density;)V

    new-instance v0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    invoke-direct {v0, v2}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    iput-object v0, v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Lcom/motorola/camera/fsm/camera/CameraState$1;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->disposeInteractionSource$1()V

    return-void
.end method

.method public final onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->PageDown:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->PageUp:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    const/16 v4, 0x20

    const-wide v5, 0xffffffffL

    if-ne v0, v1, :cond_2

    iget-wide v0, v3, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    and-long/2addr v0, v5

    long-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v7

    sget-wide v9, Landroidx/compose/ui/input/key/Key;->PageUp:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    int-to-float p1, v0

    goto :goto_0

    :cond_1
    int-to-float p1, v0

    neg-float p1, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    :goto_1
    int-to-long v2, p1

    shl-long/2addr v0, v4

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    goto :goto_3

    :cond_2
    iget-wide v0, v3, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    shr-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v7

    sget-wide v9, Landroidx/compose/ui/input/key/Key;->PageUp:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    int-to-float p1, v0

    goto :goto_2

    :cond_3
    int-to-float p1, v0

    neg-float p1, p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v2, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v3, v3, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    const/4 v11, 0x2

    const/4 v12, 0x0

    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    invoke-virtual {v5, v4}, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;

    invoke-direct {v0, v11, v2}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;-><init>(ILjava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->EmptyPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    new-instance v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-direct {v1, v12, v12, v12, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v1, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    :cond_0
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz v0, :cond_2

    move-wide/from16 v4, p3

    invoke-virtual {v0, v8, v9, v4, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v13, 0x6

    if-ne v9, v0, :cond_4

    iget v0, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    if-ne v0, v13, :cond_4

    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Lcom/motorola/camera/fsm/camera/CameraState$1;

    if-nez v0, :cond_3

    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraState$1;

    new-instance v15, Lcom/google/android/gms/tasks/zza;

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-direct {v15, v13, v0}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x2

    const-class v3, Landroidx/compose/foundation/gestures/ScrollableNode;

    const-string v4, "onWheelScrollStopped"

    const-string v5, "onWheelScrollStopped-TH1AsA0(J)V"

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iget-object v3, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object v3, v14, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v15, v14, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    iput-object v0, v14, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    iput-object v1, v14, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Ljava/lang/Object;

    const v0, 0x7fffffff

    invoke-static {v0, v13, v12}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, v14, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    new-instance v0, Landroidx/room/concurrent/FileLock;

    invoke-direct {v0, v11}, Landroidx/room/concurrent/FileLock;-><init>(I)V

    iput-object v0, v14, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    iput-object v14, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Lcom/motorola/camera/fsm/camera/CameraState$1;

    :cond_3
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Lcom/motorola/camera/fsm/camera/CameraState$1;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/StandaloneCoroutine;

    if-nez v3, :cond_4

    new-instance v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingMouseWheelEvents$1;

    invoke-direct {v3, v0, v12}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingMouseWheelEvents$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v1, v12, v12, v3, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    :cond_4
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Lcom/motorola/camera/fsm/camera/CameraState$1;

    if-eqz v0, :cond_b

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v9, v1, :cond_b

    iget v1, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    iget-object v2, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    if-ne v1, v13, :cond_b

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v10

    :goto_2
    if-ge v3, v1, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zza;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v1

    neg-float v1, v1

    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v10

    :goto_3
    iget-wide v7, v4, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    if-ge v6, v5, :cond_7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    invoke-static {v7, v8, v11, v12}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v7

    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v4, v7, v8}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    const/16 v4, 0x20

    shr-long v5, v7, v4

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    mul-float/2addr v5, v1

    const-wide v11, 0xffffffffL

    and-long v6, v7, v11

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    shl-long v3, v5, v4

    and-long v5, v7, v11

    or-long v12, v3, v5

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {v1, v12, v13}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-nez v5, :cond_8

    move v1, v10

    goto :goto_4

    :cond_8
    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iget-object v1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollForward()Z

    move-result v1

    goto :goto_4

    :cond_9
    iget-object v1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollBackward()Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v14, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;-><init>(JJZ)V

    invoke-interface {v0, v11}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    xor-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    :goto_5
    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_6
    if-ge v10, v0, :cond_b

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method

.method public final onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p7, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Lcom/motorola/camera/ui/DownUpDetector;

    iput-boolean p7, v0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableContainerNode:Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    iput-boolean p7, v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->enabled:Z

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez p3, :cond_1

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-static {v5, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iput-object p5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    move v2, v1

    :cond_2
    iput-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object p5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p5, p4, :cond_3

    iput-object p4, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move v2, v1

    :cond_3
    iget-boolean p5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    if-eq p5, p8, :cond_4

    iput-boolean p8, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    move v2, v1

    :cond_4
    iput-object v3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object p5, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object p5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object p5, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    iput-object p4, p5, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p8, p5, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    iput-object p2, p5, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    sget-object p1, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    iget-object p2, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p2, p3, :cond_5

    goto :goto_2

    :cond_5
    sget-object p3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    const/4 p2, 0x0

    if-eq p1, p7, :cond_8

    iput-boolean p7, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    if-nez p7, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->disposeInteractionSource$1()V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    :cond_7
    move v2, v1

    :cond_8
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->disposeInteractionSource$1()V

    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    :cond_9
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p1, p3, :cond_a

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    if-eqz v1, :cond_b

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->resetPointerInputHandler()V

    :cond_b
    if-eqz v0, :cond_c

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Landroidx/compose/animation/core/InfiniteTransition$run$2;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_c
    return-void
.end method
