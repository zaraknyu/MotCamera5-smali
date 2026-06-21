.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:[J

.field public label:I

.field public final synthetic this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v4, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-wide v6, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    const/4 v10, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/16 v15, 0x40

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x1

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    if-eq v9, v11, :cond_2

    if-eq v9, v14, :cond_1

    if-ne v9, v13, :cond_0

    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v13

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$1:I

    iget v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    iget-object v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:[J

    iget-object v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    add-int/2addr v9, v11

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    move-object v13, v9

    check-cast v13, Lkotlin/sequences/SequenceBuilderIterator;

    iget-object v12, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-eqz v12, :cond_4

    array-length v1, v12

    move/from16 v9, v16

    :goto_0
    if-ge v9, v1, :cond_4

    aget-wide v2, v12, v9

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    iput-object v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:[J

    iput v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    iput v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$1:I

    iput v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    invoke-virtual {v13, v4, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object v8

    :cond_4
    cmp-long v1, v6, v17

    if-eqz v1, :cond_7

    move-object v9, v13

    move/from16 v1, v16

    :goto_1
    if-ge v1, v15, :cond_6

    shl-long v12, v19, v1

    and-long/2addr v12, v6

    cmp-long v12, v12, v17

    if-eqz v12, :cond_5

    int-to-long v2, v1

    add-long/2addr v4, v2

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:[J

    iput v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    iput v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    invoke-virtual {v9, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object v8

    :cond_5
    :goto_2
    add-int/2addr v1, v11

    goto :goto_1

    :cond_6
    move-object v13, v9

    :cond_7
    cmp-long v1, v2, v17

    if-eqz v1, :cond_9

    move-object v6, v13

    move/from16 v1, v16

    :goto_3
    if-ge v1, v15, :cond_9

    shl-long v12, v19, v1

    and-long/2addr v12, v2

    cmp-long v7, v12, v17

    if-eqz v7, :cond_8

    int-to-long v2, v1

    add-long/2addr v4, v2

    int-to-long v2, v15

    add-long/2addr v4, v2

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:[J

    iput v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    const/4 v7, 0x3

    iput v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    invoke-virtual {v6, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object v8

    :cond_8
    const/4 v7, 0x3

    :goto_4
    add-int/2addr v1, v11

    goto :goto_3

    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
