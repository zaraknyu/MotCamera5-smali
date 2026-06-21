.class public Lkotlinx/coroutines/StandaloneCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "SourceFile"


# virtual methods
.method public final handleJobException(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/AbstractCoroutine;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    const/4 p0, 0x1

    return p0
.end method
