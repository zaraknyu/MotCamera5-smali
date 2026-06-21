.class public final Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $connection:Landroidx/room/Transactor;

.field public final synthetic $tablesToSync:[Landroidx/room/ObservedTableStates$ObserveOp;

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public L$0:[Landroidx/room/ObservedTableStates$ObserveOp;

.field public L$1:Landroidx/room/TriggerBasedInvalidationTracker;

.field public L$2:Landroidx/room/Transactor;

.field public label:I

.field public final synthetic this$0:Landroidx/room/TriggerBasedInvalidationTracker;


# direct methods
.method public constructor <init>([Landroidx/room/ObservedTableStates$ObserveOp;Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/Transactor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$tablesToSync:[Landroidx/room/ObservedTableStates$ObserveOp;

    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$connection:Landroidx/room/Transactor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;

    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$connection:Landroidx/room/Transactor;

    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$tablesToSync:[Landroidx/room/ObservedTableStates$ObserveOp;

    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;-><init>([Landroidx/room/ObservedTableStates$ObserveOp;Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/Transactor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$2:I

    iget v4, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$1:I

    iget v5, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$0:I

    iget-object v6, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$2:Landroidx/room/Transactor;

    iget-object v7, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$1:Landroidx/room/TriggerBasedInvalidationTracker;

    iget-object v8, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$0:[Landroidx/room/ObservedTableStates$ObserveOp;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$tablesToSync:[Landroidx/room/ObservedTableStates$ObserveOp;

    array-length v1, p1

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    iget-object v6, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$connection:Landroidx/room/Transactor;

    move-object v8, p1

    move p1, v4

    move-object v7, v5

    :goto_0
    if-ge v4, v1, :cond_7

    aget-object v5, v8, v4

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_6

    if-eq v5, v3, :cond_5

    if-ne v5, v2, :cond_4

    iput-object v8, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$0:[Landroidx/room/ObservedTableStates$ObserveOp;

    iput-object v7, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$1:Landroidx/room/TriggerBasedInvalidationTracker;

    iput-object v6, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$2:Landroidx/room/Transactor;

    iput v9, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$0:I

    iput v4, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$1:I

    iput v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$2:I

    iput v2, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->label:I

    invoke-static {v7, v6, p1, p0}, Landroidx/room/TriggerBasedInvalidationTracker;->access$stopTrackingTable(Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/Transactor;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v9

    :goto_1
    move p1, v5

    goto :goto_3

    :cond_4
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    iput-object v8, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$0:[Landroidx/room/ObservedTableStates$ObserveOp;

    iput-object v7, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$1:Landroidx/room/TriggerBasedInvalidationTracker;

    iput-object v6, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$2:Landroidx/room/Transactor;

    iput v9, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$0:I

    iput v4, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$1:I

    iput v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->I$2:I

    iput v3, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->label:I

    invoke-static {v7, v6, p1, p0}, Landroidx/room/TriggerBasedInvalidationTracker;->access$startTrackingTable(Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/Transactor;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    :goto_2
    return-object v0

    :cond_6
    move p1, v9

    :goto_3
    add-int/2addr v4, v3

    goto :goto_0

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
