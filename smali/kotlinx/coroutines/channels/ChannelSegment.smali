.class public final Lkotlinx/coroutines/channels/ChannelSegment;
.super Lkotlinx/coroutines/internal/Segment;
.source "SourceFile"


# instance fields
.field public final _channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final synthetic data:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lkotlinx/coroutines/internal/Segment;-><init>(JLkotlinx/coroutines/internal/Segment;I)V

    iput-object p4, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getNumberOfSlots()I
    .locals 0

    sget p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    return p0
.end method

.method public final getState$kotlinx_coroutines_core(I)Ljava/lang/Object;
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final onCancellation(ILkotlin/coroutines/CoroutineContext;)V
    .locals 4

    sget p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sub-int/2addr p1, p2

    :cond_1
    mul-int/lit8 p2, p1, 0x2

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Lkotlinx/coroutines/Waiter;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v3, 0x0

    if-nez v1, :cond_9

    instance-of v1, p2, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    if-eq p2, v1, :cond_8

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    if-eq p2, v1, :cond_2

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne p2, v1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-eq p2, p0, :cond_b

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne p2, p0, :cond_6

    goto :goto_5

    :cond_6
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne p2, p0, :cond_7

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unexpected state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    if-eqz v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_4

    :cond_a
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    :goto_4
    invoke-virtual {p0, p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    xor-int/lit8 p2, v0, 0x1

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    if-eqz v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final onCancelledRequest(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, v0

    iget-wide v2, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v2, v0

    int-to-long v0, p1

    add-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->waitExpandBufferCompletion$kotlinx_coroutines_core(J)V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    return-void
.end method

.method public final setElementLazy(ILjava/lang/Object;)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final setState$kotlinx_coroutines_core(ILjava/lang/Object;)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method
