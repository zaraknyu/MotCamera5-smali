.class public final Lc/p;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/Iterator;

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lc/h;

.field public final synthetic l:Lc/q;


# direct methods
.method public constructor <init>(Lc/h;Lc/q;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/p;->k:Lc/h;

    iput-object p2, p0, Lc/p;->l:Lc/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lc/p;

    iget-object v1, p0, Lc/p;->k:Lc/h;

    iget-object p0, p0, Lc/p;->l:Lc/q;

    invoke-direct {v0, v1, p0, p2}, Lc/p;-><init>(Lc/h;Lc/q;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lc/p;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/p;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/p;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v5, p0

    iget-object v6, v5, Lc/p;->k:Lc/h;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v5, Lc/p;->i:I

    iget-object v11, v5, Lc/p;->l:Lc/q;

    const/4 v12, 0x1

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v1, v5, Lc/p;->h:Z

    iget v2, v5, Lc/p;->g:I

    iget v3, v5, Lc/p;->f:I

    iget-object v0, v5, Lc/p;->j:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    goto/16 :goto_2f

    :pswitch_1
    iget-boolean v1, v5, Lc/p;->h:Z

    iget v2, v5, Lc/p;->g:I

    iget v3, v5, Lc/p;->f:I

    iget-object v0, v5, Lc/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v5, Lc/p;->a:Ljava/lang/Object;

    check-cast v4, Lc/q;

    iget-object v15, v5, Lc/p;->j:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, p1

    move-object v8, v15

    goto/16 :goto_28

    :catchall_0
    move-exception v0

    goto/16 :goto_32

    :catch_0
    move-exception v0

    :goto_0
    move-object v4, v15

    :goto_1
    const/4 v14, 0x0

    goto/16 :goto_30

    :pswitch_2
    iget-boolean v1, v5, Lc/p;->h:Z

    iget v2, v5, Lc/p;->g:I

    iget v3, v5, Lc/p;->f:I

    iget-object v0, v5, Lc/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v5, Lc/p;->c:Ljava/lang/Object;

    check-cast v4, Lc/q;

    iget-object v15, v5, Lc/p;->b:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    iget-object v13, v5, Lc/p;->a:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v8, v5, Lc/p;->j:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v1

    move v10, v2

    move v12, v3

    move-object v3, v15

    move-object/from16 v1, p1

    move-object v15, v13

    move-object v13, v8

    move-object v8, v0

    move-object v0, v4

    goto/16 :goto_25

    :catch_1
    move-exception v0

    move-object v15, v8

    goto :goto_0

    :pswitch_3
    iget-boolean v1, v5, Lc/p;->h:Z

    iget v2, v5, Lc/p;->g:I

    iget v3, v5, Lc/p;->f:I

    iget-object v0, v5, Lc/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v5, Lc/p;->c:Ljava/lang/Object;

    check-cast v4, Lc/q;

    iget-object v8, v5, Lc/p;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v13, v5, Lc/p;->a:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v15, v5, Lc/p;->j:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v10, p1

    move-object v9, v8

    const/4 v14, 0x3

    move-object v8, v4

    move-object v4, v15

    goto/16 :goto_1e

    :pswitch_4
    iget-boolean v1, v5, Lc/p;->h:Z

    iget v2, v5, Lc/p;->g:I

    iget v3, v5, Lc/p;->f:I

    iget-object v0, v5, Lc/p;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v4, v5, Lc/p;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v8, v5, Lc/p;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v13, v5, Lc/p;->j:Ljava/lang/Object;

    move-object v15, v13

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v9, p1

    const/4 v14, 0x3

    goto/16 :goto_19

    :pswitch_5
    iget-boolean v1, v5, Lc/p;->h:Z

    iget v2, v5, Lc/p;->g:I

    iget v3, v5, Lc/p;->f:I

    iget-object v0, v5, Lc/p;->d:Ljava/lang/Object;

    check-cast v0, Lc/X;

    iget-object v0, v5, Lc/p;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v4, v5, Lc/p;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v8, v5, Lc/p;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v13, v5, Lc/p;->j:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v9, v0

    const/4 v14, 0x3

    move-object/from16 v0, p1

    goto/16 :goto_14

    :catch_2
    move-exception v0

    :goto_2
    move-object v15, v13

    goto/16 :goto_0

    :pswitch_6
    iget-boolean v1, v5, Lc/p;->h:Z

    iget v2, v5, Lc/p;->g:I

    iget v3, v5, Lc/p;->f:I

    iget-object v0, v5, Lc/p;->e:Ljava/util/Iterator;

    iget-object v4, v5, Lc/p;->d:Ljava/lang/Object;

    check-cast v4, Lc/q;

    iget-object v8, v5, Lc/p;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v13, v5, Lc/p;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v15, v5, Lc/p;->a:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    iget-object v9, v5, Lc/p;->j:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    :try_start_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    move-object/from16 v10, p1

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object v4, v9

    goto/16 :goto_1

    :pswitch_7
    iget v0, v5, Lc/p;->g:I

    iget v1, v5, Lc/p;->f:I

    iget-object v2, v5, Lc/p;->j:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v8, 0x9c4

    goto :goto_3

    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v5, Lc/p;->j:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iput-object v2, v5, Lc/p;->j:Ljava/lang/Object;

    iput v14, v5, Lc/p;->f:I

    iput v14, v5, Lc/p;->g:I

    iput v12, v5, Lc/p;->i:I

    const-wide/16 v8, 0x9c4

    invoke-static {v8, v9, v5}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_0

    goto/16 :goto_2e

    :cond_0
    move v0, v14

    move v1, v0

    :goto_3
    move v3, v1

    move-object v4, v2

    move v1, v14

    move v2, v0

    :goto_4
    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_35

    :try_start_7
    sget-object v0, Lc/q;->c:Lkotlinx/coroutines/sync/SemaphoreImpl;

    iget v10, v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    sget-object v13, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_1
    :goto_5
    invoke-virtual {v13, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v15

    if-le v15, v10, :cond_3

    :cond_2
    invoke-virtual {v13, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v15

    if-le v15, v10, :cond_1

    invoke-virtual {v13, v0, v15, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :cond_3
    if-gtz v15, :cond_4

    move v1, v14

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v15, -0x1

    invoke-virtual {v13, v0, v15, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_32

    move v1, v12

    :goto_6
    iget-object v0, v6, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v1, :cond_2f

    iget-object v8, v11, Lc/q;->a:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_7

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/X;

    invoke-virtual {v9}, Lc/X;->e()Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_2b

    :cond_7
    :goto_7
    new-instance v8, Lc/o;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->take(Ljava/util/List;I)Ljava/util/List;

    move-result-object v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lc/X;

    invoke-virtual {v15}, Lc/X;->c()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_8

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_9
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/X;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lc/X;->c()J

    move-result-wide v16

    goto :goto_9

    :cond_a
    const-wide/16 v16, -0x1

    :goto_9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v18, v15

    check-cast v18, Lc/X;

    invoke-virtual/range {v18 .. v18}, Lc/X;->c()J

    move-result-wide v18

    cmp-long v18, v18, v16

    if-nez v18, :cond_b

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_d

    move-object v15, v0

    move v8, v1

    move v12, v3

    move-object v13, v4

    move-object v3, v10

    move v10, v2

    goto/16 :goto_f

    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v15, v0

    move-object v0, v8

    move-object v13, v10

    move-object v8, v4

    move-object v4, v11

    :goto_b
    :try_start_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/X;

    if-eqz v2, :cond_e

    goto :goto_c

    :cond_e
    move v12, v14

    :goto_c
    iput-object v8, v5, Lc/p;->j:Ljava/lang/Object;

    iput-object v15, v5, Lc/p;->a:Ljava/lang/Object;

    iput-object v13, v5, Lc/p;->b:Ljava/lang/Object;

    iput-object v9, v5, Lc/p;->c:Ljava/lang/Object;

    iput-object v4, v5, Lc/p;->d:Ljava/lang/Object;

    iput-object v0, v5, Lc/p;->e:Ljava/util/Iterator;

    iput v3, v5, Lc/p;->f:I

    iput v2, v5, Lc/p;->g:I

    iput-boolean v1, v5, Lc/p;->h:Z

    const/4 v14, 0x2

    iput v14, v5, Lc/p;->i:I

    invoke-static {v4, v10, v12, v5}, Lc/q;->a(Lc/q;Lc/X;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ne v10, v7, :cond_f

    goto/16 :goto_2e

    :cond_f
    :goto_d
    :try_start_9
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v10, :cond_10

    move v10, v2

    move v12, v3

    move-object v3, v13

    const/4 v14, 0x1

    :goto_e
    move-object v13, v8

    move v8, v1

    goto :goto_f

    :cond_10
    const/4 v12, 0x1

    const/4 v14, 0x0

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v4, v8

    goto/16 :goto_1

    :cond_11
    move v10, v2

    move v12, v3

    move-object v3, v13

    const/4 v14, 0x0

    goto :goto_e

    :goto_f
    if-eqz v14, :cond_14

    if-eqz v8, :cond_12

    move v2, v10

    move v3, v12

    move-object v4, v13

    :goto_10
    const/4 v14, 0x0

    goto/16 :goto_31

    :cond_12
    move v1, v8

    move v2, v10

    move v3, v12

    move-object v4, v13

    :cond_13
    :goto_11
    const-wide/16 v8, 0x9c4

    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_14
    :try_start_a
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lc/X;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_1c

    if-eqz v12, :cond_19

    :try_start_b
    iget-object v0, v5, Lc/p;->l:Lc/q;

    if-eqz v12, :cond_15

    const/4 v2, 0x1

    goto :goto_12

    :cond_15
    const/4 v2, 0x0

    :goto_12
    if-eqz v10, :cond_16

    const/4 v4, 0x1

    goto :goto_13

    :cond_16
    const/4 v4, 0x0

    :goto_13
    iput-object v13, v5, Lc/p;->j:Ljava/lang/Object;

    iput-object v15, v5, Lc/p;->a:Ljava/lang/Object;

    iput-object v3, v5, Lc/p;->b:Ljava/lang/Object;

    iput-object v9, v5, Lc/p;->c:Ljava/lang/Object;

    iput-object v1, v5, Lc/p;->d:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v5, Lc/p;->e:Ljava/util/Iterator;

    iput v12, v5, Lc/p;->f:I

    iput v10, v5, Lc/p;->g:I

    iput-boolean v8, v5, Lc/p;->h:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v14, 0x3

    :try_start_c
    iput v14, v5, Lc/p;->i:I

    invoke-static/range {v0 .. v5}, Lc/q;->a(Lc/q;Lc/X;ZLjava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-ne v0, v7, :cond_17

    goto/16 :goto_2e

    :cond_17
    move-object v4, v3

    move v1, v8

    move v2, v10

    move v3, v12

    move-object v8, v15

    :goto_14
    :try_start_d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v0, :cond_18

    move-object v4, v13

    if-eqz v1, :cond_13

    goto :goto_1a

    :cond_18
    move-object v15, v8

    move-object v8, v4

    :goto_15
    move-object v0, v9

    move-object v4, v13

    goto :goto_18

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move v1, v8

    goto/16 :goto_32

    :catch_7
    move-exception v0

    :goto_16
    move v1, v8

    :goto_17
    move v2, v10

    move v3, v12

    move-object v4, v13

    goto/16 :goto_1

    :catch_8
    move-exception v0

    const/4 v14, 0x3

    goto :goto_16

    :cond_19
    const/4 v14, 0x3

    move v1, v8

    move v2, v10

    move-object v8, v3

    move v3, v12

    goto :goto_15

    :goto_18
    :try_start_e
    iput-object v4, v5, Lc/p;->j:Ljava/lang/Object;

    iput-object v15, v5, Lc/p;->a:Ljava/lang/Object;

    iput-object v8, v5, Lc/p;->b:Ljava/lang/Object;

    iput-object v0, v5, Lc/p;->c:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v5, Lc/p;->d:Ljava/lang/Object;

    iput-object v9, v5, Lc/p;->e:Ljava/util/Iterator;

    iput v3, v5, Lc/p;->f:I

    iput v2, v5, Lc/p;->g:I

    iput-boolean v1, v5, Lc/p;->h:Z

    const/4 v9, 0x4

    iput v9, v5, Lc/p;->i:I

    invoke-static {v11, v5}, Lc/q;->a(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-ne v9, v7, :cond_1a

    goto/16 :goto_2e

    :cond_1a
    move-object/from16 v20, v15

    move-object v15, v4

    move-object v4, v8

    move-object/from16 v8, v20

    :goto_19
    :try_start_f
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v9, :cond_1b

    move-object v4, v15

    if-eqz v1, :cond_13

    :goto_1a
    sget-object v0, Lc/q;->c:Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    :goto_1b
    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_1b
    move-object v9, v0

    goto :goto_1c

    :cond_1c
    const/4 v14, 0x3

    move-object v4, v3

    move v1, v8

    move v2, v10

    move v3, v12

    move-object v8, v15

    move-object v15, v13

    :goto_1c
    if-eqz v9, :cond_1d

    :try_start_10
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object v9, v4

    move-object v13, v8

    move-object v8, v11

    move-object v4, v15

    :cond_1e
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/X;

    if-eqz v2, :cond_1f

    const/4 v12, 0x1

    goto :goto_1d

    :cond_1f
    const/4 v12, 0x0

    :goto_1d
    iput-object v4, v5, Lc/p;->j:Ljava/lang/Object;

    iput-object v13, v5, Lc/p;->a:Ljava/lang/Object;

    iput-object v9, v5, Lc/p;->b:Ljava/lang/Object;

    iput-object v8, v5, Lc/p;->c:Ljava/lang/Object;

    iput-object v0, v5, Lc/p;->d:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v5, Lc/p;->e:Ljava/util/Iterator;

    iput v3, v5, Lc/p;->f:I

    iput v2, v5, Lc/p;->g:I

    iput-boolean v1, v5, Lc/p;->h:Z

    const/4 v15, 0x5

    iput v15, v5, Lc/p;->i:I

    invoke-static {v8, v10, v12, v5}, Lc/q;->a(Lc/q;Lc/X;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-ne v10, v7, :cond_20

    goto/16 :goto_2e

    :cond_20
    :goto_1e
    :try_start_12
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v10, :cond_1e

    const/4 v0, 0x1

    goto :goto_20

    :catch_9
    move-exception v0

    move-object v15, v4

    goto/16 :goto_0

    :cond_21
    move-object v15, v4

    move-object v4, v9

    move-object v8, v13

    :goto_1f
    move-object v9, v4

    move-object v13, v8

    move-object v4, v15

    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_22

    if-eqz v1, :cond_13

    :goto_21
    goto/16 :goto_10

    :cond_22
    if-eqz v13, :cond_23

    :try_start_13
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_26

    :cond_23
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-object v8, v0

    move v10, v2

    move v12, v3

    move-object v3, v9

    move-object v0, v11

    move-object v15, v13

    move v9, v1

    move-object v13, v4

    :goto_22
    :try_start_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/X;

    if-eqz v12, :cond_24

    const/4 v2, 0x1

    goto :goto_23

    :cond_24
    const/4 v2, 0x0

    :goto_23
    if-eqz v10, :cond_25

    const/4 v4, 0x1

    goto :goto_24

    :cond_25
    const/4 v4, 0x0

    :goto_24
    iput-object v13, v5, Lc/p;->j:Ljava/lang/Object;

    iput-object v15, v5, Lc/p;->a:Ljava/lang/Object;

    iput-object v3, v5, Lc/p;->b:Ljava/lang/Object;

    iput-object v0, v5, Lc/p;->c:Ljava/lang/Object;

    iput-object v8, v5, Lc/p;->d:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v5, Lc/p;->e:Ljava/util/Iterator;

    iput v12, v5, Lc/p;->f:I

    iput v10, v5, Lc/p;->g:I

    iput-boolean v9, v5, Lc/p;->h:Z

    const/4 v14, 0x6

    iput v14, v5, Lc/p;->i:I

    invoke-static/range {v0 .. v5}, Lc/q;->a(Lc/q;Lc/X;ZLjava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-ne v1, v7, :cond_26

    goto/16 :goto_2e

    :cond_26
    :goto_25
    :try_start_15
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v1, :cond_27

    move v1, v9

    move v2, v10

    move v3, v12

    move-object v4, v13

    const/4 v0, 0x1

    goto :goto_27

    :cond_27
    const/4 v14, 0x3

    goto :goto_22

    :catchall_2
    move-exception v0

    move v1, v9

    goto/16 :goto_32

    :catch_a
    move-exception v0

    move v1, v9

    move v2, v10

    move v3, v12

    goto/16 :goto_2

    :catch_b
    move-exception v0

    move v1, v9

    goto/16 :goto_17

    :cond_28
    move v1, v9

    move v2, v10

    move v3, v12

    move-object v4, v13

    move-object v13, v15

    :goto_26
    move-object v15, v13

    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_29

    if-eqz v1, :cond_13

    goto :goto_21

    :cond_29
    if-eqz v15, :cond_2a

    :try_start_16
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_29

    :cond_2a
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object v8, v4

    move-object v4, v11

    :cond_2b
    :try_start_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/X;

    iput-object v8, v5, Lc/p;->j:Ljava/lang/Object;

    iput-object v4, v5, Lc/p;->a:Ljava/lang/Object;

    iput-object v0, v5, Lc/p;->b:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v5, Lc/p;->c:Ljava/lang/Object;

    iput-object v14, v5, Lc/p;->d:Ljava/lang/Object;

    iput-object v14, v5, Lc/p;->e:Ljava/util/Iterator;

    iput v3, v5, Lc/p;->f:I

    iput v2, v5, Lc/p;->g:I

    iput-boolean v1, v5, Lc/p;->h:Z

    const/4 v9, 0x7

    iput v9, v5, Lc/p;->i:I

    invoke-static {v4, v5}, Lc/q;->a(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-ne v9, v7, :cond_2c

    goto :goto_2e

    :cond_2c
    :goto_28
    :try_start_18
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v9, :cond_2b

    move-object v4, v8

    const/4 v0, 0x1

    goto :goto_2a

    :cond_2d
    move-object v4, v8

    :goto_29
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_2e

    if-eqz v1, :cond_13

    goto/16 :goto_21

    :cond_2e
    const/4 v0, 0x1

    goto :goto_2c

    :cond_2f
    :goto_2b
    const/4 v0, 0x0

    :goto_2c
    if-eqz v2, :cond_30

    if-eqz v0, :cond_30

    const-wide/16 v8, 0x2710

    goto :goto_2d

    :cond_30
    const-wide/16 v8, 0x9c4

    :goto_2d
    :try_start_19
    iput-object v4, v5, Lc/p;->j:Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const/4 v14, 0x0

    :try_start_1a
    iput-object v14, v5, Lc/p;->a:Ljava/lang/Object;

    iput-object v14, v5, Lc/p;->b:Ljava/lang/Object;

    iput-object v14, v5, Lc/p;->c:Ljava/lang/Object;

    iput-object v14, v5, Lc/p;->d:Ljava/lang/Object;

    iput-object v14, v5, Lc/p;->e:Ljava/util/Iterator;

    iput v3, v5, Lc/p;->f:I

    iput v2, v5, Lc/p;->g:I

    iput-boolean v1, v5, Lc/p;->h:Z

    const/16 v0, 0x8

    iput v0, v5, Lc/p;->i:I

    invoke-static {v8, v9, v5}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-ne v0, v7, :cond_31

    :goto_2e
    return-object v7

    :cond_31
    :goto_2f
    if-eqz v1, :cond_13

    goto :goto_31

    :catch_c
    move-exception v0

    goto :goto_30

    :cond_32
    const-wide/16 v8, 0x9c4

    const/4 v14, 0x0

    goto/16 :goto_5

    :goto_30
    :try_start_1b
    instance-of v8, v0, Ljava/util/concurrent/CancellationException;

    if-nez v8, :cond_33

    const-string v8, "DocumentBackgroundWorker"

    const-string v9, "Exception in background processing"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v1, :cond_13

    :goto_31
    sget-object v0, Lc/q;->c:Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    goto/16 :goto_1b

    :cond_33
    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :goto_32
    if-eqz v1, :cond_34

    sget-object v1, Lc/q;->c:Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    :cond_34
    throw v0

    :cond_35
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
