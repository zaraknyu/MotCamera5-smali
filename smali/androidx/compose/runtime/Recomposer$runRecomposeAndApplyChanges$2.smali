.class public final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public synthetic L$0:Landroidx/compose/runtime/MonotonicFrameClock;

.field public L$1:Ljava/util/List;

.field public L$2:Ljava/util/List;

.field public L$3:Ljava/util/List;

.field public L$4:Landroidx/collection/MutableScatterSet;

.field public L$5:Landroidx/collection/MutableScatterSet;

.field public L$6:Landroidx/collection/MutableScatterSet;

.field public L$7:Ljava/util/Set;

.field public L$8:Landroidx/collection/MutableScatterSet;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    iget-object v4, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    move-object/from16 v8, p3

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/CompositionImpl;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    move-object/from16 v8, p3

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v5, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v7, v1, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    const/16 v6, 0x8

    const-wide/16 p2, 0x80

    if-ltz v8, :cond_4

    const/4 v9, 0x0

    const-wide/16 v16, 0xff

    :goto_1
    aget-wide v11, v7, v9

    const/4 v10, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v13, v11

    shl-long/2addr v13, v10

    and-long/2addr v13, v11

    and-long v13, v13, v18

    cmp-long v13, v13, v18

    if-eqz v13, :cond_3

    sub-int v13, v9, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_2

    and-long v20, v11, v16

    cmp-long v15, v20, p2

    if-gez v15, :cond_1

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget-object v15, v5, v15

    check-cast v15, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v15}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/CompositionImpl;)V

    :cond_1
    shr-long/2addr v11, v6

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    if-ne v13, v6, :cond_5

    :cond_3
    if-eq v9, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x7

    const-wide/16 v16, 0xff

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    :cond_5
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    iget-object v1, v2, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v5, v2, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v7, v5

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_9

    const/4 v8, 0x0

    :goto_3
    aget-wide v11, v5, v8

    not-long v13, v11

    shl-long/2addr v13, v10

    and-long/2addr v13, v11

    and-long v13, v13, v18

    cmp-long v9, v13, v18

    if-eqz v9, :cond_8

    sub-int v9, v8, v7

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v9, :cond_7

    and-long v14, v11, v16

    cmp-long v14, v14, p2

    if-gez v14, :cond_6

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v1, v14

    check-cast v14, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v14}, Landroidx/compose/runtime/CompositionImpl;->changesApplied()V

    :cond_6
    shr-long/2addr v11, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    if-ne v9, v6, :cond_9

    :cond_8
    if-eq v8, v7, :cond_9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual/range {p6 .. p6}, Landroidx/collection/MutableScatterSet;->clear()V

    iget-object v1, v3, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v3, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_d

    const/4 v7, 0x0

    :goto_5
    aget-wide v8, v2, v7

    not-long v11, v8

    shl-long/2addr v11, v10

    and-long/2addr v11, v8

    and-long v11, v11, v18

    cmp-long v11, v11, v18

    if-eqz v11, :cond_c

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_b

    and-long v13, v8, v16

    cmp-long v13, v13, p2

    if-gez v13, :cond_a

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v1, v13

    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v13}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/CompositionImpl;)V

    :cond_a
    shr-long/2addr v8, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_b
    if-ne v11, v6, :cond_d

    :cond_c
    if-eq v7, v5, :cond_d

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :goto_7
    monitor-exit v4

    throw v0
.end method

.method public static final access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p1, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {p1, p0, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Landroidx/compose/runtime/MonotonicFrameClock;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$8:Landroidx/collection/MutableScatterSet;

    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$7:Ljava/util/Set;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$6:Landroidx/collection/MutableScatterSet;

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Landroidx/collection/MutableScatterSet;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Landroidx/collection/MutableScatterSet;

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/util/List;

    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/util/List;

    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Landroidx/compose/runtime/MonotonicFrameClock;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v20, v13

    move-object v13, v2

    move-object/from16 v2, v20

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$8:Landroidx/collection/MutableScatterSet;

    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$7:Ljava/util/Set;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$6:Landroidx/collection/MutableScatterSet;

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Landroidx/collection/MutableScatterSet;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Landroidx/collection/MutableScatterSet;

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/util/List;

    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/util/List;

    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Landroidx/compose/runtime/MonotonicFrameClock;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v9

    move-object v9, v2

    move-object v2, v13

    move-object v13, v10

    move-object v10, v12

    move-object v12, v14

    :goto_0
    move-object v15, v6

    move-object v14, v8

    move-object v8, v7

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Landroidx/compose/runtime/MonotonicFrameClock;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v9, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v9, Landroidx/collection/MutableScatterSet;

    invoke-direct {v9}, Landroidx/collection/MutableScatterSet;-><init>()V

    new-instance v10, Landroidx/collection/MutableScatterSet;

    invoke-direct {v10}, Landroidx/collection/MutableScatterSet;-><init>()V

    new-instance v11, Landroidx/collection/MutableScatterSet;

    invoke-direct {v11}, Landroidx/collection/MutableScatterSet;-><init>()V

    new-instance v12, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-direct {v12, v11}, Landroidx/compose/runtime/collection/ScatterSetWrapper;-><init>(Landroidx/collection/MutableScatterSet;)V

    new-instance v13, Landroidx/collection/MutableScatterSet;

    invoke-direct {v13}, Landroidx/collection/MutableScatterSet;-><init>()V

    move-object/from16 v20, v12

    move-object v12, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v11

    move-object v11, v7

    move-object/from16 v7, v20

    move-object/from16 v20, v10

    move-object v10, v8

    move-object/from16 v8, v20

    :goto_1
    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v14, v14, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v14

    monitor-exit v14

    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Landroidx/compose/runtime/MonotonicFrameClock;

    iput-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/util/List;

    iput-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/util/List;

    iput-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/util/List;

    iput-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Landroidx/collection/MutableScatterSet;

    iput-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Landroidx/collection/MutableScatterSet;

    iput-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$6:Landroidx/collection/MutableScatterSet;

    move-object v15, v6

    check-cast v15, Ljava/util/Set;

    iput-object v15, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$7:Ljava/util/Set;

    iput-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$8:Landroidx/collection/MutableScatterSet;

    iput v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    invoke-virtual {v14}, Landroidx/compose/runtime/Recomposer;->getHasSchedulingWork()Z

    move-result v15

    if-nez v15, :cond_6

    new-instance v15, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v15, v5, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v3, v14, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v14}, Landroidx/compose/runtime/Recomposer;->getHasSchedulingWork()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v14, v15

    goto :goto_2

    :cond_3
    iput-object v15, v14, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    :goto_2
    monitor-exit v3

    if-eqz v14, :cond_4

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v14, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v3, v14, :cond_5

    goto :goto_3

    :cond_5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-ne v3, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v14, v12

    move-object v12, v9

    move-object v9, v13

    move-object v13, v10

    move-object v10, v14

    goto/16 :goto_0

    :goto_4
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v6, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;

    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct/range {v6 .. v15}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V

    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Landroidx/compose/runtime/MonotonicFrameClock;

    iput-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/util/List;

    iput-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/util/List;

    iput-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/util/List;

    iput-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Landroidx/collection/MutableScatterSet;

    iput-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Landroidx/collection/MutableScatterSet;

    iput-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$6:Landroidx/collection/MutableScatterSet;

    move-object v3, v15

    check-cast v3, Ljava/util/Set;

    iput-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$7:Ljava/util/Set;

    iput-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$8:Landroidx/collection/MutableScatterSet;

    iput v4, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    invoke-interface {v2, v6, v0}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    :goto_5
    return-object v1

    :cond_8
    move-object v6, v13

    move-object v13, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v6

    move-object v7, v8

    move-object v8, v14

    move-object v6, v15

    :goto_6
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v14, v3, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_1
    iget-object v15, v3, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    iget v4, v15, Landroidx/collection/MutableScatterMap;->_size:I

    const/16 v17, 0x0

    if-eqz v4, :cond_9

    move v4, v5

    goto :goto_7

    :cond_9
    move/from16 v4, v17

    :goto_7
    if-eqz v4, :cond_b

    invoke-static {v15}, Landroidx/compose/runtime/collection/MultiValueMap;->values-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableObjectList;

    move-result-object v4

    iget-object v15, v3, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v15}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v15, v3, Landroidx/compose/runtime/Recomposer;->movableContentNestedStatesAvailable:Landroidx/room/concurrent/FileLock;

    iget-object v5, v15, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v5, Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v5, v15, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v5, Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v5, v3, Landroidx/compose/runtime/Recomposer;->movableContentNestedExtractionsPending:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5}, Landroidx/collection/MutableScatterMap;->clear()V

    new-instance v5, Landroidx/collection/MutableObjectList;

    iget v15, v4, Landroidx/collection/MutableObjectList;->_size:I

    invoke-direct {v5, v15}, Landroidx/collection/MutableObjectList;-><init>(I)V

    iget-object v15, v4, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    iget v4, v4, Landroidx/collection/MutableObjectList;->_size:I

    move/from16 v0, v17

    :goto_8
    if-ge v0, v4, :cond_a

    aget-object v18, v15, v0

    move/from16 p1, v0

    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/runtime/MovableContentStateReference;

    move-object/from16 v18, v1

    iget-object v1, v3, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v2

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, p1, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_a
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    iget-object v0, v3, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    goto :goto_9

    :cond_b
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    sget-object v5, Landroidx/collection/ObjectListKt;->EmptyObjectList:Landroidx/collection/MutableObjectList;

    const-string v0, "null cannot be cast to non-null type androidx.collection.ObjectList<E of androidx.collection.ObjectListKt.emptyObjectList>"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_9
    monitor-exit v14

    iget-object v0, v5, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    iget v1, v5, Landroidx/collection/MutableObjectList;->_size:I

    move/from16 v2, v17

    :goto_a
    if-ge v2, v1, :cond_c

    aget-object v3, v0, v2

    check-cast v3, Lkotlin/Pair;

    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/MovableContentState;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_1

    :goto_b
    monitor-exit v14

    throw v0

    :cond_d
    move-object v0, v13

    move-object v13, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v7, v8

    move-object v8, v14

    move-object v6, v15

    goto/16 :goto_1
.end method
