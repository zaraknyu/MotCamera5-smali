.class public final Lkotlinx/coroutines/channels/ProducerCoroutine;
.super Lkotlinx/coroutines/channels/ChannelCoroutine;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/ProducerScope;


# virtual methods
.method public final onCancelled(Ljava/lang/Throwable;Z)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/AbstractCoroutine;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    :cond_0
    return-void
.end method

.method public final onCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z

    return-void
.end method
