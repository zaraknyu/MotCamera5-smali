.class public final Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $actualSpeed:F

.field public final synthetic $animatable:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

.field public final synthetic $cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

.field public final synthetic $composition:Lcom/airbnb/lottie/LottieComposition;

.field public final synthetic $wasPlaying$delegate:Landroidx/compose/runtime/MutableState;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$animatable:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iput-object p2, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iput p3, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$actualSpeed:F

    iput-object p4, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    iput-object p5, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$wasPlaying$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;

    iget-object v4, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    iget-object v5, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$wasPlaying$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$animatable:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget-object v2, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iget v3, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$actualSpeed:F

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->label:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$animatable:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget-object v9, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$wasPlaying$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v10, 0x2

    const/4 v3, 0x1

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v10, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v11

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    iput v3, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->label:I

    iget-object p1, v4, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    :cond_5
    :goto_1
    move v6, v5

    iget-object p1, v4, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/airbnb/lottie/LottieComposition;

    iget-object p1, v4, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p1, v6, p1

    if-nez p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    xor-int/lit8 v7, p1, 0x1

    iget-object p1, v4, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->mutex:Landroidx/compose/foundation/MutatorMutex;

    new-instance v3, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FZLkotlin/coroutines/Continuation;)V

    sget-object v1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/compose/foundation/MutatorMutex$mutate$2;

    invoke-direct {v1, p1, v3, v2}, Landroidx/compose/foundation/MutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    move-object p1, v11

    :goto_3
    if-ne p1, v0, :cond_8

    goto :goto_4

    :cond_8
    move-object p1, v11

    :goto_4
    if-ne p1, v0, :cond_a

    goto :goto_7

    :cond_9
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_a
    :goto_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iput v10, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->label:I

    invoke-virtual {v4}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getIteration()I

    move-result v5

    iget-object p1, v4, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->mutex:Landroidx/compose/foundation/MutatorMutex;

    new-instance v3, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;

    const/4 v10, 0x0

    iget v6, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$actualSpeed:F

    iget-object v7, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v9, p0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;->$cancellationBehavior:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    invoke-direct/range {v3 .. v10}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;IFLcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/Continuation;)V

    sget-object v1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/compose/foundation/MutatorMutex$mutate$2;

    invoke-direct {v1, p1, v3, v2}, Landroidx/compose/foundation/MutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    goto :goto_6

    :cond_b
    move-object p0, v11

    :goto_6
    if-ne p0, v0, :cond_c

    :goto_7
    return-object v0

    :cond_c
    return-object v11
.end method
