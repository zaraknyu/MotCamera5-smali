.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

.field public final synthetic $childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->$childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->$boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->$childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->$boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iget-object v1, p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/gestures/ContentInViewNode;

    new-instance v4, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    iget-object v5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->$childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->$boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    invoke-direct {v4, p1, v5, v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;)V

    iput v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->label:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    if-eqz p1, :cond_8

    iget-wide v5, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-virtual {v1, p1, v5, v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-direct {p1, v3, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    invoke-direct {p0, v4, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    iget-object v5, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Lcom/google/android/gms/tasks/zzad;

    iget-object v6, v5, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v4}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    if-nez v4, :cond_2

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    new-instance v7, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v8, 0xa

    invoke-direct {v7, v8, v5, p0}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    iget v5, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v7, 0x0

    invoke-static {v7, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    iget v8, v5, Lkotlin/ranges/IntProgression;->first:I

    iget v5, v5, Lkotlin/ranges/IntProgression;->last:I

    if-gt v8, v5, :cond_6

    :goto_0
    iget-object v9, v6, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v9, v9, v5

    check-cast v9, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v9, v9, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->currentBounds:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    invoke-virtual {v9}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/geometry/Rect;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v9}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/2addr v5, v3

    invoke-virtual {v6, v5, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v9}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/util/concurrent/CancellationException;

    const-string v10, "bringIntoView call interrupted by a newer, non-overlapping call"

    invoke-direct {v9, v10}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iget v10, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v10, v3

    if-gt v10, v5, :cond_5

    :goto_1
    iget-object v11, v6, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v11, v11, v5

    check-cast v11, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v11, v11, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v11, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    if-eq v10, v5, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eq v5, v8, :cond_6

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v6, v7, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(ILjava/lang/Object;)V

    :goto_3
    iget-boolean p0, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    if-nez p0, :cond_7

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation()V

    :cond_7
    :goto_4
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p0, v2

    :goto_5
    if-ne p0, v0, :cond_9

    return-object v0

    :cond_9
    return-object v2
.end method
