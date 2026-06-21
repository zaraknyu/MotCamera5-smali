.class public final Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

.field public final clauseObject:Lkotlinx/coroutines/channels/BufferedChannel;

.field public disposableHandleOrSegment:Lkotlinx/coroutines/internal/Segment;

.field public indexInSegment:I

.field public final onCancellationConstructor:Lkotlin/jvm/functions/Function3;

.field public final synthetic this$0:Lkotlinx/coroutines/selects/SelectImplementation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/jvm/internal/SuspendLambda;Lkotlin/jvm/functions/Function3;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object p3, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p4, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Lkotlinx/coroutines/internal/Segment;

    if-eqz v0, :cond_0

    iget v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1, p0}, Lkotlinx/coroutines/internal/Segment;->onCancellation(ILkotlin/coroutines/CoroutineContext;)V

    return-void

    :cond_0
    instance-of p0, v0, Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_1

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_2
    return-void
.end method
