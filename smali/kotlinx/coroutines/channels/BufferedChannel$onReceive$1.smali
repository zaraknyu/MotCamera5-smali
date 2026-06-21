.class public final synthetic Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;

    const-string/jumbo v4, "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lkotlinx/coroutines/channels/BufferedChannel;

    const-string/jumbo v3, "registerSelectForReceive"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    move-object v5, p2

    check-cast v5, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/channels/ChannelSegment;

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    check-cast v5, Lkotlinx/coroutines/selects/SelectImplementation;

    iput-object p0, v5, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    goto :goto_4

    :cond_0
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long p1, p1

    div-long v1, v3, p1

    rem-long p1, v3, p1

    long-to-int p1, p1

    iget-wide p2, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long p2, p2, v1

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1, v2, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_1
    move v2, p1

    goto :goto_2

    :cond_2
    move-object v1, p0

    goto :goto_1

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, v1

    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    if-ne p0, p1, :cond_4

    instance-of p0, v5, Lkotlinx/coroutines/Waiter;

    if-eqz p0, :cond_3

    check-cast v5, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    invoke-interface {v5, p2, v2}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_4

    :cond_4
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne p0, p1, :cond_6

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_5

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_5
    move-object p0, p2

    goto :goto_0

    :cond_6
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    if-eq p0, p1, :cond_8

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    check-cast v5, Lkotlinx/coroutines/selects/SelectImplementation;

    iput-object p0, v5, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
