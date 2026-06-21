.class public abstract Landroidx/concurrent/futures/SuspendToFutureAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/Unconfined;

.field public static final GlobalListenableFutureScope:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ContextScope;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ContextScope;-><init>()V

    sput-object v0, Landroidx/concurrent/futures/SuspendToFutureAdapter;->GlobalListenableFutureScope:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Unconfined:Lkotlinx/coroutines/Unconfined;

    sput-object v0, Landroidx/concurrent/futures/SuspendToFutureAdapter;->GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/Unconfined;

    return-void
.end method

.method public static launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;
    .locals 10

    if-eqz p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    :goto_0
    sget-object v0, Landroidx/concurrent/futures/SuspendToFutureAdapter;->GlobalListenableFutureScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0, p0, p1, p2}, Lkotlinx/coroutines/JobKt;->async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v3

    new-instance p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    invoke-direct {p0, v3}, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;-><init>(Lkotlinx/coroutines/DeferredCoroutine;)V

    new-instance v1, Landroidx/room/InvalidationTracker$implementation$1;

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v2, 0x1

    const-class v4, Lkotlinx/coroutines/Deferred;

    const-string v5, "await"

    const-string v6, "await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    new-instance p1, Lkotlin/coroutines/SafeContinuation;

    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    sget-object v0, Landroidx/concurrent/futures/SuspendToFutureAdapter;->GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/Unconfined;

    if-ne v0, p2, :cond_1

    new-instance p2, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1;

    invoke-direct {p2, p0, v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1;-><init>(Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;Landroidx/room/InvalidationTracker$implementation$1;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;

    invoke-direct {p2, p0, v0, v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;-><init>(Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;Lkotlin/coroutines/CoroutineContext;Landroidx/room/InvalidationTracker$implementation$1;)V

    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-direct {p1, p2, v0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/intrinsics/CoroutineSingletons;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/coroutines/SafeContinuation;->resumeWith(Ljava/lang/Object;)V

    return-object p0
.end method
