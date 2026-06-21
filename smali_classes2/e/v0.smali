.class public final Le/v0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Le/s0;

.field public b:Lkotlin/jvm/internal/Ref$IntRef;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lf/B;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Le/A0;

.field public final synthetic i:Lkotlin/coroutines/jvm/internal/SuspendLambda;


# direct methods
.method public constructor <init>(Lf/B;IILe/A0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Le/v0;->e:Lf/B;

    iput p2, p0, Le/v0;->f:I

    iput p3, p0, Le/v0;->g:I

    iput-object p4, p0, Le/v0;->h:Le/A0;

    check-cast p5, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p5, p0, Le/v0;->i:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Le/v0;

    iget-object v4, p0, Le/v0;->h:Le/A0;

    iget-object v5, p0, Le/v0;->i:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iget-object v1, p0, Le/v0;->e:Lf/B;

    iget v2, p0, Le/v0;->f:I

    iget v3, p0, Le/v0;->g:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/v0;-><init>(Lf/B;IILe/A0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Le/v0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/v0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/v0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/v0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Le/v0;->c:I

    const/4 v3, 0x2

    iget v4, v0, Le/v0;->f:I

    iget-object v5, v0, Le/v0;->h:Le/A0;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Le/v0;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Le/v0;->a:Le/s0;

    iget-object v9, v0, Le/v0;->d:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    move-object v8, v2

    move-object v2, v9

    move-object v9, v6

    move-object/from16 v6, p1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Le/v0;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Le/v0;->a:Le/s0;

    iget-object v9, v0, Le/v0;->d:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Le/v0;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v10, v0, Le/v0;->g:I

    if-nez v9, :cond_4

    iget-object v11, v0, Le/v0;->e:Lf/B;

    if-eqz v11, :cond_3

    new-instance v12, Le/s0;

    add-int/lit16 v13, v4, -0x3e8

    iget-object v14, v5, Le/A0;->b:Lkotlinx/coroutines/SupervisorJobImpl;

    sget-object v15, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v3, Lc/V;

    const/4 v6, 0x5

    invoke-direct {v3, v11, v7, v6}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v2, v14, v15, v3}, Lkotlinx/coroutines/JobKt;->async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v3

    invoke-direct {v12, v13, v10, v9, v3}, Le/s0;-><init>(IIILkotlinx/coroutines/DeferredCoroutine;)V

    move-object v3, v12

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x2

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v3, Le/s0;

    iget-object v6, v5, Le/A0;->b:Lkotlinx/coroutines/SupervisorJobImpl;

    sget-object v11, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v12, Lc/V;

    iget-object v13, v0, Le/v0;->i:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    invoke-direct {v12, v7, v13}, Lc/V;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, v6, v11, v12}, Lkotlinx/coroutines/JobKt;->async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v6

    invoke-direct {v3, v4, v10, v9, v6}, Le/s0;-><init>(IIILkotlinx/coroutines/DeferredCoroutine;)V

    :goto_1
    :try_start_2
    sget-object v6, Le/A0;->f:Le/p0;

    iget-object v6, v5, Le/A0;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object v2, v0, Le/v0;->d:Ljava/lang/Object;

    iput-object v3, v0, Le/v0;->a:Le/s0;

    iput-object v8, v0, Le/v0;->b:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v9, 0x1

    iput v9, v0, Le/v0;->c:I

    invoke-interface {v6, v3, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v6, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v9, v2

    move-object v2, v8

    move-object v8, v3

    :goto_2
    :try_start_3
    iget-object v3, v5, Le/A0;->d:Le/s0;

    if-eqz v3, :cond_6

    iget v6, v3, Le/s0;->a:I

    if-le v6, v4, :cond_6

    iget-object v6, v3, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {v6, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object v3, v3, Le/s0;->e:Lkotlinx/coroutines/sync/MutexImpl;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v3, v7}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_6
    :try_start_5
    iput-object v9, v0, Le/v0;->d:Ljava/lang/Object;

    iput-object v8, v0, Le/v0;->a:Le/s0;

    iput-object v2, v0, Le/v0;->b:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v3, 0x2

    iput v3, v0, Le/v0;->c:I

    invoke-virtual {v8, v0}, Le/s0;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v6, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object/from16 v17, v8

    move-object v8, v2

    move-object v2, v9

    move-object/from16 v9, v17

    :goto_4
    :try_start_6
    check-cast v6, Ljava/util/List;
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v6, :cond_8

    return-object v6

    :cond_8
    iget v6, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v6, v16

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v8, v3

    :goto_5
    move-object v9, v8

    :goto_6
    sget-object v1, Le/A0;->f:Le/p0;

    iget-object v1, v9, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {v1, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object v1, v9, Le/s0;->e:Lkotlinx/coroutines/sync/MutexImpl;

    :try_start_7
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    throw v0

    :cond_9
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object v0
.end method
