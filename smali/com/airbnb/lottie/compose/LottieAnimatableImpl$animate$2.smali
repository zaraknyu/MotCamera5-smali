.class public final Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

.field public final synthetic $composition:Lcom/airbnb/lottie/LottieComposition;

.field public final synthetic $initialProgress:F

.field public final synthetic $iteration:I

.field public final synthetic $speed:F

.field public label:I

.field public final synthetic this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;IFLcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iput p2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$iteration:I

    iput p3, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$speed:F

    iput-object p4, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iput p5, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$initialProgress:F

    iput-object p6, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;

    iget v5, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$initialProgress:F

    iget-object v6, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$iteration:I

    iget v3, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$speed:F

    iget-object v4, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;IFLcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->label:I

    iget-object v2, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$iteration:I

    invoke-virtual {v6, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setIteration(I)V

    iget-object p1, v6, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->isPlaying$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, v6, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iterations$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const v7, 0x7fffffff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->reverseOnRepeat$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget v9, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$speed:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iget-object v10, v6, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v10, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$initialProgress:F

    invoke-virtual {v6, v1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->updateProgress(F)V

    iget-object v1, v6, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->useCompositionFrameRate$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->lastFrameNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const-wide/high16 v11, -0x8000000000000000L

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    if-nez v10, :cond_2

    invoke-virtual {p1, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v3

    :cond_2
    invoke-static {v9}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getEndProgress()F

    move-result p0

    invoke-virtual {v6, p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->updateProgress(F)V

    invoke-virtual {p1, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setIteration(I)V

    return-object v3

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_4

    sget-object p1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v9

    new-instance v7, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2$1;

    iget-object v8, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    iget v10, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->$iteration:I

    iget-object v11, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2$1;-><init>(Lcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlinx/coroutines/Job;ILcom/airbnb/lottie/compose/LottieAnimatableImpl;Lkotlin/coroutines/Continuation;)V

    iput v5, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;->label:I

    invoke-static {p1, v7, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v4}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->access$setPlaying(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Z)V

    return-object v3

    :goto_2
    invoke-static {v6, v4}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->access$setPlaying(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Z)V

    throw p0
.end method
