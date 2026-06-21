.class public final Lkotlinx/coroutines/LazyDeferredCoroutine;
.super Lkotlinx/coroutines/DeferredCoroutine;
.source "SourceFile"


# instance fields
.field public final continuation:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    invoke-static {p0, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->createCoroutineUnintercepted(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/LazyDeferredCoroutine;->continuation:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/LazyDeferredCoroutine;->continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v0, p0}, Lkotlinx/coroutines/intrinsics/CancellableKt;->startCoroutineCancellable(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/AbstractCoroutine;)V

    return-void
.end method
