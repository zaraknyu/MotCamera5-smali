.class public final Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $onRetry:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

.field public final synthetic $result$delegate:Landroidx/compose/runtime/MutableState;

.field public final synthetic $spec:Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

.field public I$0:I

.field public L$0:Ljava/lang/Throwable;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$onRetry:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    iput-object p2, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$spec:Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    iput-object p4, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$result$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;

    iget-object v3, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$spec:Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    iget-object v4, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$result$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$onRetry:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    iget-object v2, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$context:Landroid/content/Context;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;-><init>(Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->label:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v11, :cond_1

    if-ne v0, v10, :cond_0

    iget v1, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->I$0:I

    iget-object v0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->L$0:Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    move-object v0, p1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move v13, v1

    :goto_0
    move-object v1, v0

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->I$0:I

    iget-object v1, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->L$0:Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v8

    move-object v1, v9

    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$result$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object v2, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isSuccess$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v2}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$onRetry:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->L$0:Ljava/lang/Throwable;

    iput v0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->I$0:I

    iput v11, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->label:I

    invoke-virtual {v2, v3, v1, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v7, :cond_3

    goto :goto_7

    :cond_3
    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    move v13, v0

    move-object v12, v1

    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$spec:Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    const-string v2, "fonts/"

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v9

    goto :goto_4

    :cond_5
    const/16 v3, 0x2f

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;C)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    move-object v3, v2

    goto :goto_4

    :cond_6
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :goto_4
    const-string v2, ".ttf"

    const-string v4, "."

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_5
    move-object v4, v2

    goto :goto_6

    :cond_8
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :goto_6
    const-string v5, "__LottieInternalDefaultCacheKey__"

    iput-object v12, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->L$0:Ljava/lang/Throwable;

    iput v13, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->I$0:I

    iput v10, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->label:I

    const/4 v2, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->access$lottieComposition(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v7, :cond_9

    :goto_7
    return-object v7

    :cond_9
    move v1, v13

    :goto_8
    :try_start_2
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    iget-object v2, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$result$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "composition"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isComplete$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_a

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :cond_a
    :try_start_5
    iget-object v3, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->compositionDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {v3, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_9
    move v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v0

    goto/16 :goto_0

    :goto_a
    add-int/lit8 v0, v13, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$result$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object v0, v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isComplete$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;->$result$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    monitor-enter v2

    :try_start_9
    iget-object v0, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isComplete$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_c

    monitor-exit v2

    goto :goto_b

    :cond_c
    :try_start_a
    iget-object v0, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->compositionDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v3, v1, v8}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v2

    goto :goto_b

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :cond_d
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
