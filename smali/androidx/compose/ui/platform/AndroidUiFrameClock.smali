.class public final Landroidx/compose/ui/platform/AndroidUiFrameClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/MonotonicFrameClock;


# instance fields
.field public final synthetic $r8$classId:I

.field public final choreographer:Ljava/lang/Object;

.field public final dispatcher:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroidx/compose/ui/platform/AndroidUiDispatcher;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->choreographer:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->dispatcher:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/MonotonicFrameClock;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->choreographer:Ljava/lang/Object;

    .line 5
    new-instance p1, Landroidx/compose/runtime/Latch;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/compose/runtime/Latch;-><init>(IB)V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->dispatcher:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->get(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->get(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->minusKey(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->minusKey(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;

    iget v2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;-><init>(Landroidx/compose/ui/platform/AndroidUiFrameClock;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->result:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$1:Lkotlin/jvm/functions/Function1;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$0:Landroidx/compose/ui/platform/AndroidUiFrameClock;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->dispatcher:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/Latch;

    iput-object p0, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$0:Landroidx/compose/ui/platform/AndroidUiFrameClock;

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iput-object v3, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$1:Lkotlin/jvm/functions/Function1;

    iput v1, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    iget-object v3, p2, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v5, p2, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    if-eqz v5, :cond_4

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_4
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v1, p2, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v5, p2, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    new-instance v1, Landroidx/compose/runtime/Latch$await$2$2;

    const/4 v5, 0x0

    invoke-direct {v1, v5, p2, v3}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    goto :goto_1

    :cond_5
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne p2, v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->choreographer:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MonotonicFrameClock;

    const/4 p2, 0x0

    iput-object p2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$0:Landroidx/compose/ui/platform/AndroidUiFrameClock;

    iput-object p2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$1:Lkotlin/jvm/functions/Function1;

    iput v4, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    invoke-interface {p0, p1, v0}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_7

    :goto_3
    move-object p2, v2

    :cond_7
    :goto_4
    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v3

    throw p0

    :pswitch_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->dispatcher:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p2, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;

    invoke-direct {p2, v2, p0, p1}, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;Landroidx/compose/ui/platform/AndroidUiFrameClock;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->choreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->choreographer:Ljava/lang/Object;

    check-cast v3, Landroid/view/Choreographer;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    iget-object p1, v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z

    if-nez p1, :cond_8

    iput-boolean v1, v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z

    iget-object p1, v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->choreographer:Landroid/view/Choreographer;

    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->dispatchCallback:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-virtual {p1, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_8
    :goto_5
    monitor-exit p0

    new-instance p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0, p2}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    goto :goto_7

    :goto_6
    monitor-exit p0

    throw p1

    :cond_9
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->choreographer:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    new-instance p1, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0, p2}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    :goto_7
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
