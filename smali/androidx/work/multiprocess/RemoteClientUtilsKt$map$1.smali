.class public final Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $this_map:Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

.field public final synthetic $transformation:Landroidx/arch/core/util/Function;

.field public L$0:Landroidx/arch/core/util/Function;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->$transformation:Landroidx/arch/core/util/Function;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->$this_map:Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->$transformation:Landroidx/arch/core/util/Function;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->$this_map:Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    invoke-direct {p1, v0, p0, p2}, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;-><init>(Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->L$0:Landroidx/arch/core/util/Function;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->$transformation:Landroidx/arch/core/util/Function;

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->L$0:Landroidx/arch/core/util/Function;

    iput v2, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->label:I

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;->$this_map:Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    invoke-static {v1, p0}, Landroidx/concurrent/futures/ListenableFutureKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    :goto_0
    invoke-interface {p0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
