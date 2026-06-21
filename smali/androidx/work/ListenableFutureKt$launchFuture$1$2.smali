.class public final Landroidx/work/ListenableFutureKt$launchFuture$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

.field public final synthetic $completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    check-cast p1, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p1, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->$block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p2, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;

    iget-object v1, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->$block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iget-object p0, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-direct {v0, v1, p0, p2}, Landroidx/work/ListenableFutureKt$launchFuture$1$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->label:I

    iget-object v2, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    iget-object v1, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->$block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput v3, p0, Landroidx/work/ListenableFutureKt$launchFuture$1$2;->label:I

    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v2, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    iput-boolean v3, v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    iget-object p0, v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {p0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancel(Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    iput-object p0, v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    iput-object p0, v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    iput-object p0, v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
