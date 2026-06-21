.class public final Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $composition:Lcom/airbnb/lottie/LottieComposition;

.field public final synthetic $progress:F

.field public final synthetic $resetLastFrameNanos:Z

.field public final synthetic this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iput-object p2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iput p3, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$progress:F

    iput-boolean p4, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$resetLastFrameNanos:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;

    iget v3, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$progress:F

    iget-boolean v4, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$resetLastFrameNanos:Z

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget-object v1, v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$progress:F

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->updateProgress(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setIteration(I)V

    iget-object p1, v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->isPlaying$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;->$resetLastFrameNanos:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->lastFrameNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
