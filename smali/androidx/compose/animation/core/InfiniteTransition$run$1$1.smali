.class public final Landroidx/compose/animation/core/InfiniteTransition$run$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $toolingOverride:Landroidx/compose/runtime/MutableState;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlin/jvm/internal/Ref$FloatRef;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/animation/core/InfiniteTransition;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v1

    move-object v9, v4

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v1

    move-object v9, v4

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move-object v9, p1

    move-object v8, v1

    :cond_3
    :goto_0
    new-instance v5, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;

    iget-object v7, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    const/4 v10, 0x1

    iget-object v6, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v5 .. v10}, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v9, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->label:I

    invoke-static {v5, p0}, Landroidx/compose/animation/core/ArcSplineKt;->withInfiniteAnimationFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget p1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-nez p1, :cond_3

    new-instance p1, Landroidx/compose/runtime/Pending$keyMap$2;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v9}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p1

    new-instance v1, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$3;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object v9, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->L$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v3, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    :goto_2
    return-object v0
.end method
