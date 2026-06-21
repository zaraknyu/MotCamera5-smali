.class public final Lc/r0;
.super Lc/M0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;)V
    .locals 2

    iput-object p1, p0, Lc/r0;->f:Lc/s1;

    iget-object v0, p1, Lc/s1;->A:Lc/e1;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lc/s1;->i:Lc/G;

    invoke-direct {p0, p1, v0, v1}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lc/q0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lc/q0;

    iget v3, v2, Lc/q0;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lc/q0;->o:I

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lc/q0;

    invoke-direct {v2, v0, v1}, Lc/q0;-><init>(Lc/r0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v9, Lc/q0;->m:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v3, v9, Lc/q0;->o:I

    const-string v5, "<this>"

    const-string v11, "Page"

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v9, Lc/q0;->h:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, v9, Lc/q0;->g:Ljava/lang/Object;

    check-cast v2, Lc/P0;

    iget-object v3, v9, Lc/q0;->f:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, v9, Lc/q0;->e:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, v9, Lc/q0;->d:Ljava/lang/Object;

    check-cast v5, Lg/a0;

    iget-object v6, v9, Lc/q0;->c:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v9, Lc/q0;->b:Ljava/lang/Object;

    check-cast v7, Lg/a0;

    iget-object v8, v9, Lc/q0;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 p1, v11

    goto/16 :goto_1b

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    :catch_0
    move-exception v0

    move-object/from16 p1, v11

    goto/16 :goto_1e

    :catch_1
    move-exception v0

    move-object/from16 p1, v11

    goto/16 :goto_20

    :pswitch_1
    iget-wide v3, v9, Lc/q0;->k:J

    iget-object v0, v9, Lc/q0;->h:Ljava/lang/Object;

    check-cast v0, Lc/P0;

    iget-object v5, v9, Lc/q0;->g:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v6, v9, Lc/q0;->f:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v9, Lc/q0;->e:Ljava/lang/Object;

    check-cast v7, Lg/a0;

    iget-object v8, v9, Lc/q0;->d:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v9, Lc/q0;->c:Ljava/lang/Object;

    check-cast v13, Lg/a0;

    iget-object v14, v9, Lc/q0;->b:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/sync/Mutex;

    iget-object v15, v9, Lc/q0;->a:Ljava/lang/Object;

    check-cast v15, Lc/r0;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p1, v11

    goto/16 :goto_17

    :catchall_1
    move-exception v0

    goto/16 :goto_31

    :catch_2
    move-exception v0

    move-object/from16 p1, v11

    goto/16 :goto_2c

    :catch_3
    move-exception v0

    move-object v2, v11

    goto/16 :goto_2e

    :pswitch_2
    iget-wide v13, v9, Lc/q0;->l:J

    move-object/from16 p1, v11

    iget-wide v10, v9, Lc/q0;->k:J

    move-object v8, v5

    iget-wide v4, v9, Lc/q0;->j:J

    iget-object v0, v9, Lc/q0;->i:Lc/N0;

    iget-object v15, v9, Lc/q0;->h:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v3, v9, Lc/q0;->g:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v6, v9, Lc/q0;->f:Ljava/lang/Object;

    check-cast v6, Lg/a0;

    iget-object v12, v9, Lc/q0;->e:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v9, Lc/q0;->d:Ljava/lang/Object;

    check-cast v7, Lg/a0;

    move-object/from16 v17, v1

    iget-object v1, v9, Lc/q0;->c:Ljava/lang/Object;

    check-cast v1, Lc/s1;

    move-object/from16 p0, v1

    iget-object v1, v9, Lc/q0;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    move-object/from16 v18, v1

    iget-object v1, v9, Lc/q0;->a:Ljava/lang/Object;

    check-cast v1, Lc/r0;

    :try_start_2
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v19, v4

    move-object/from16 v17, v8

    move-object v8, v12

    move-object v12, v15

    move-wide v14, v13

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 p0, v3

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v8, v12

    :goto_2
    move-object/from16 v14, v18

    goto/16 :goto_31

    :catch_4
    move-exception v0

    move-object v8, v12

    :goto_3
    move-object/from16 v14, v18

    goto/16 :goto_2c

    :catch_5
    move-exception v0

    move-object/from16 v2, p1

    move-object v8, v12

    :goto_4
    move-object/from16 v14, v18

    goto/16 :goto_2e

    :pswitch_3
    move-object/from16 v17, v1

    move-object v8, v5

    move-object/from16 p1, v11

    iget-wide v0, v9, Lc/q0;->k:J

    iget-wide v3, v9, Lc/q0;->j:J

    iget-object v5, v9, Lc/q0;->h:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v6, v9, Lc/q0;->g:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v9, Lc/q0;->f:Ljava/lang/Object;

    check-cast v7, Lg/a0;

    iget-object v10, v9, Lc/q0;->e:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v9, Lc/q0;->d:Ljava/lang/Object;

    check-cast v11, Lg/a0;

    iget-object v12, v9, Lc/q0;->c:Ljava/lang/Object;

    check-cast v12, Lc/s1;

    iget-object v13, v9, Lc/q0;->b:Ljava/lang/Object;

    move-object v14, v13

    check-cast v14, Lkotlinx/coroutines/sync/Mutex;

    iget-object v13, v9, Lc/q0;->a:Ljava/lang/Object;

    check-cast v13, Lc/r0;

    :try_start_3
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide/from16 v29, v0

    move-object v0, v12

    move-object v12, v14

    move-wide/from16 v14, v29

    move-wide/from16 v29, v3

    move-object v3, v5

    move-wide/from16 v4, v29

    move-object/from16 v1, v17

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    move-object v8, v10

    goto/16 :goto_31

    :catch_6
    move-exception v0

    move-object v8, v10

    goto/16 :goto_2c

    :catch_7
    move-exception v0

    move-object/from16 v2, p1

    move-object v8, v10

    goto/16 :goto_2e

    :pswitch_4
    move-object/from16 v17, v1

    move-object v8, v5

    move-object/from16 p1, v11

    iget-object v0, v9, Lc/q0;->c:Ljava/lang/Object;

    check-cast v0, Lc/s1;

    iget-object v1, v9, Lc/q0;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v9, Lc/q0;->a:Ljava/lang/Object;

    check-cast v3, Lc/r0;

    :try_start_4
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v14, v1

    move-object/from16 v1, v17

    goto :goto_7

    :catchall_4
    move-exception v0

    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_32

    :pswitch_5
    move-object/from16 v17, v1

    move-object v8, v5

    move-object/from16 p1, v11

    iget-object v0, v9, Lc/q0;->c:Ljava/lang/Object;

    check-cast v0, Lc/s1;

    iget-object v1, v9, Lc/q0;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v9, Lc/q0;->a:Ljava/lang/Object;

    check-cast v3, Lc/r0;

    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v29, v3

    move-object v3, v0

    move-object/from16 v0, v29

    goto :goto_6

    :pswitch_6
    move-object/from16 v17, v1

    move-object v8, v5

    move-object/from16 p1, v11

    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    iput-object v0, v9, Lc/q0;->a:Ljava/lang/Object;

    iget-object v1, v0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v1, v9, Lc/q0;->b:Ljava/lang/Object;

    iget-object v3, v0, Lc/r0;->f:Lc/s1;

    iput-object v3, v9, Lc/q0;->c:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v9, Lc/q0;->o:I

    invoke-virtual {v1, v9}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    goto/16 :goto_1a

    .line 6
    :cond_1
    :goto_6
    :try_start_5
    iput-object v0, v9, Lc/q0;->a:Ljava/lang/Object;

    iput-object v1, v9, Lc/q0;->b:Ljava/lang/Object;

    iput-object v3, v9, Lc/q0;->c:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v9, Lc/q0;->o:I

    invoke-static {v0, v9}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-ne v4, v2, :cond_2

    goto/16 :goto_1a

    :cond_2
    move-object v14, v3

    move-object v3, v0

    move-object v0, v14

    move-object v14, v1

    move-object v1, v4

    :goto_7
    :try_start_6
    check-cast v1, Lc/N0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    .line 7
    invoke-interface {v14, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v1

    .line 8
    :cond_3
    :try_start_7
    new-instance v1, Lg/a0;

    invoke-direct {v1}, Lg/a0;-><init>()V

    .line 9
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 11
    :try_start_8
    new-instance v5, Lg/a0;

    invoke-direct {v5}, Lg/a0;-><init>()V

    .line 12
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 13
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 14
    iget-object v10, v0, Lc/s1;->A:Lc/e1;

    .line 15
    iput-object v3, v9, Lc/q0;->a:Ljava/lang/Object;

    iput-object v14, v9, Lc/q0;->b:Ljava/lang/Object;

    iput-object v0, v9, Lc/q0;->c:Ljava/lang/Object;

    iput-object v1, v9, Lc/q0;->d:Ljava/lang/Object;

    iput-object v4, v9, Lc/q0;->e:Ljava/lang/Object;

    iput-object v5, v9, Lc/q0;->f:Ljava/lang/Object;

    iput-object v6, v9, Lc/q0;->g:Ljava/lang/Object;

    iput-object v7, v9, Lc/q0;->h:Ljava/lang/Object;

    const-wide/16 v11, 0x0

    iput-wide v11, v9, Lc/q0;->j:J

    iput-wide v11, v9, Lc/q0;->k:J

    const/4 v13, 0x3

    iput v13, v9, Lc/q0;->o:I

    invoke-static {v10, v9}, Lc/M0;->b(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_18
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    if-ne v10, v2, :cond_4

    goto/16 :goto_1a

    :cond_4
    move-object v13, v3

    move-object v3, v7

    move-object v7, v5

    move-wide/from16 v29, v11

    move-object v11, v1

    move-object v1, v10

    move-object v12, v14

    move-object v10, v4

    move-wide/from16 v4, v29

    move-wide v14, v4

    .line 16
    :goto_8
    :try_start_9
    check-cast v1, Lc/N0;

    if-eqz v1, :cond_14

    move-object/from16 v17, v8

    .line 17
    invoke-virtual {v1}, Lc/N0;->a()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_5

    goto/16 :goto_29

    .line 18
    :cond_5
    iput-object v8, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-wide/from16 v19, v14

    .line 19
    invoke-virtual {v7}, Lg/a0;->c()J

    move-result-wide v14

    .line 20
    invoke-virtual {v0}, Lc/s1;->g()Lc/a;

    move-result-object v8

    invoke-virtual {v8}, Lc/a;->b()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 21
    iget-object v8, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v24, v8

    check-cast v24, Landroid/graphics/Bitmap;

    .line 22
    iget-boolean v8, v0, Lc/s1;->d:Z

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Lc/s1;->g()Lc/a;

    move-result-object v8

    invoke-virtual {v8}, Lc/a;->b()Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v23, 0x1

    goto :goto_9

    :cond_6
    const/16 v23, 0x0

    .line 23
    :goto_9
    sget-object v8, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    iput-object v13, v9, Lc/q0;->a:Ljava/lang/Object;

    iput-object v12, v9, Lc/q0;->b:Ljava/lang/Object;

    iput-object v0, v9, Lc/q0;->c:Ljava/lang/Object;

    iput-object v11, v9, Lc/q0;->d:Ljava/lang/Object;

    iput-object v10, v9, Lc/q0;->e:Ljava/lang/Object;

    iput-object v7, v9, Lc/q0;->f:Ljava/lang/Object;

    iput-object v6, v9, Lc/q0;->g:Ljava/lang/Object;

    iput-object v3, v9, Lc/q0;->h:Ljava/lang/Object;

    iput-object v1, v9, Lc/q0;->i:Lc/N0;

    iput-wide v4, v9, Lc/q0;->j:J

    move-wide/from16 v27, v4

    move-object v5, v3

    move-wide/from16 v3, v19

    iput-wide v3, v9, Lc/q0;->k:J

    iput-wide v14, v9, Lc/q0;->l:J

    const/4 v8, 0x4

    iput v8, v9, Lc/q0;->o:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v8, Lb/o;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 25
    new-instance v21, Lc/n0;

    move-object/from16 p0, v1

    iget-object v1, v13, Lc/r0;->f:Lc/s1;

    const/16 v26, 0x0

    const/16 v25, 0x1

    move-object/from16 v22, v1

    invoke-direct/range {v21 .. v26}, Lc/n0;-><init>(Lc/s1;ZLandroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V

    move-object/from16 v1, v21

    invoke-static {v8, v1, v9}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-ne v1, v2, :cond_7

    goto/16 :goto_1a

    :cond_7
    move-object v1, v0

    move-object v8, v10

    move-object/from16 v18, v12

    move-wide/from16 v19, v27

    move-object/from16 v0, p0

    move-object v12, v5

    move-object/from16 p0, v6

    move-object v6, v7

    move-object v7, v11

    move-wide v10, v3

    .line 26
    :goto_a
    :try_start_a
    invoke-virtual {v6}, Lg/a0;->c()J

    move-result-wide v3

    iput-wide v3, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 27
    sget-object v3, Lc/Z;->a:Lc/Z;

    invoke-virtual {v1}, Lc/s1;->s()Lc/X;

    move-result-object v3

    move-object/from16 v5, v17

    .line 28
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v4, Lc/Z;->b:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 30
    iget v3, v3, Lc/X;->a:I

    move-object/from16 v17, v1

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/Y;

    if-nez v1, :cond_8

    new-instance v1, Lc/Y;

    move-object/from16 v21, v6

    const/4 v6, 0x6

    .line 32
    invoke-direct {v1, v3, v6}, Lc/Y;-><init>(II)V

    :goto_b
    move-object/from16 v22, v7

    goto :goto_c

    :cond_8
    move-object/from16 v21, v6

    goto :goto_b

    .line 33
    :goto_c
    iget-wide v6, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move/from16 v23, v3

    move-object/from16 v16, v8

    const/4 v3, 0x5

    const/4 v8, 0x0

    :try_start_b
    invoke-static {v1, v6, v7, v8, v3}, Lc/Y;->a(Lc/Y;JLc/w;I)Lc/Y;

    move-result-object v1

    .line 34
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v1, v0

    move-wide v6, v10

    move-object v8, v13

    move-object/from16 v13, v16

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move-wide/from16 v27, v19

    move-object/from16 v11, v21

    move-object/from16 v3, v22

    move-object/from16 v10, p0

    goto/16 :goto_13

    :catchall_5
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object/from16 v16, v8

    :goto_d
    move-object/from16 v8, v16

    goto/16 :goto_2

    :catch_a
    move-exception v0

    move-object/from16 v16, v8

    :goto_e
    move-object/from16 v8, v16

    goto/16 :goto_3

    :catch_b
    move-exception v0

    move-object/from16 v16, v8

    :goto_f
    move-object/from16 v2, p1

    move-object/from16 v8, v16

    goto/16 :goto_4

    :catchall_7
    move-exception v0

    goto :goto_10

    :catch_c
    move-exception v0

    goto :goto_11

    :catch_d
    move-exception v0

    goto :goto_12

    :goto_10
    move-object v8, v10

    move-object v14, v12

    goto/16 :goto_31

    :goto_11
    move-object v8, v10

    move-object v14, v12

    goto/16 :goto_2c

    :goto_12
    move-object/from16 v2, p1

    move-object v8, v10

    move-object v14, v12

    goto/16 :goto_2e

    :cond_9
    move-object/from16 p0, v1

    move-object v1, v3

    move-wide/from16 v27, v4

    move-object/from16 v5, v17

    move-wide/from16 v3, v19

    move-object v8, v13

    move-object v13, v10

    move-object v10, v6

    move-object/from16 v29, v1

    move-object/from16 v1, p0

    move-object/from16 v30, v12

    move-object/from16 v12, v29

    move-object/from16 v29, v11

    move-object v11, v7

    move-wide v6, v3

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    .line 35
    :goto_13
    :try_start_c
    invoke-virtual {v1}, Lc/N0;->b()Lc/P0;

    move-result-object v17

    invoke-virtual {v0}, Lc/s1;->g()Lc/a;

    move-result-object v18

    const-wide/16 v22, 0x0

    const/16 v24, 0x1e

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v24}, Lc/P0;->a(Lc/P0;Lc/a;IIIJI)Lc/P0;

    move-result-object v0

    iget-object v1, v0, Lc/P0;->a:Lc/a;

    move-object/from16 v17, v2

    .line 36
    invoke-static {}, La/l;->a()Lb/o;

    move-result-object v2

    move-wide/from16 v18, v14

    .line 37
    invoke-virtual {v1}, Lc/a;->a()[Landroid/graphics/PointF;

    move-result-object v14

    iget-object v15, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-wide/from16 v20, v6

    iget-object v6, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2, v14, v15, v6}, Lb/o;->a([Landroid/graphics/PointF;II)Ljava/util/Vector;

    move-result-object v6

    const/4 v7, 0x0

    .line 38
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_14
    const/4 v14, 0x1

    goto :goto_15

    :cond_a
    const/4 v7, 0x0

    goto :goto_14

    .line 39
    :goto_15
    invoke-static {v6, v14}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_16

    :cond_b
    const/4 v6, 0x0

    :goto_16
    if-lez v7, :cond_13

    if-lez v6, :cond_13

    .line 40
    iget-object v14, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Bitmap;

    .line 41
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bitmap"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v5, Landroid/util/Size;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v5, v15, v14}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v5}, La/l;->a(Lc/a;Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v5

    .line 43
    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v7, v6}, Landroid/util/Size;-><init>(II)V

    invoke-static {v14}, La/l;->a(Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v14

    invoke-static {v5, v14}, Lc/s1;->a([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 44
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 45
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v14, 0x1

    .line 46
    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 48
    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setDither(Z)V

    .line 49
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    iget-object v15, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v15, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual {v11}, Lg/a0;->c()J

    move-result-wide v14

    iput-wide v14, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 52
    const-string v5, "also(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 53
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    const/high16 v7, -0x1000000

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_d

    .line 54
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    iget-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lc/a;->a()[Landroid/graphics/PointF;

    move-result-object v1

    iput-object v8, v9, Lc/q0;->a:Ljava/lang/Object;

    iput-object v4, v9, Lc/q0;->b:Ljava/lang/Object;

    iput-object v3, v9, Lc/q0;->c:Ljava/lang/Object;

    iput-object v13, v9, Lc/q0;->d:Ljava/lang/Object;

    iput-object v11, v9, Lc/q0;->e:Ljava/lang/Object;

    iput-object v10, v9, Lc/q0;->f:Ljava/lang/Object;

    iput-object v12, v9, Lc/q0;->g:Ljava/lang/Object;

    iput-object v0, v9, Lc/q0;->h:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v9, Lc/q0;->i:Lc/N0;

    move-wide/from16 v6, v20

    iput-wide v6, v9, Lc/q0;->j:J

    move-wide/from16 v14, v18

    iput-wide v14, v9, Lc/q0;->k:J

    const/4 v6, 0x5

    iput v6, v9, Lc/q0;->o:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    move-object/from16 v22, v3

    move-object/from16 v18, v4

    move-object v4, v5

    move-object v5, v1

    move-object v3, v2

    :try_start_d
    invoke-virtual/range {v3 .. v9}, Lb/o;->a(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;IZLjava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object/from16 v2, v17

    if-ne v1, v2, :cond_c

    goto/16 :goto_1a

    :cond_c
    move-object v6, v10

    move-object v7, v11

    move-object v5, v12

    move-object v8, v13

    move-wide v3, v14

    move-object/from16 v15, v16

    move-object/from16 v14, v18

    move-object/from16 v13, v22

    .line 56
    :goto_17
    :try_start_e
    check-cast v1, Lb/a;

    .line 57
    invoke-virtual {v7}, Lg/a0;->c()J

    move-result-wide v27

    .line 58
    invoke-virtual {v1}, Lb/a;->a()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    move-wide v10, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v13

    move-object v8, v15

    :goto_18
    move-wide/from16 v12, v27

    goto :goto_19

    :catch_e
    move-exception v0

    goto/16 :goto_2c

    :catch_f
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_2e

    :catchall_8
    move-exception v0

    goto/16 :goto_26

    :catch_10
    move-exception v0

    goto/16 :goto_27

    :catch_11
    move-exception v0

    goto/16 :goto_28

    :catchall_9
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_26

    :catch_12
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_27

    :catch_13
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_28

    :cond_d
    move-object/from16 v22, v3

    move-object/from16 v16, v8

    move-object/from16 v2, v17

    move-wide/from16 v14, v18

    move-object/from16 v18, v4

    move-object v1, v0

    move-object v0, v6

    move-object v4, v10

    move-object v5, v11

    move-object v3, v12

    move-object v6, v13

    move-wide v10, v14

    move-object/from16 v14, v18

    move-object/from16 v7, v22

    goto :goto_18

    .line 59
    :goto_19
    :try_start_f
    iget-object v15, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v0, :cond_f

    .line 60
    iput-object v14, v9, Lc/q0;->a:Ljava/lang/Object;

    iput-object v7, v9, Lc/q0;->b:Ljava/lang/Object;

    iput-object v6, v9, Lc/q0;->c:Ljava/lang/Object;

    iput-object v5, v9, Lc/q0;->d:Ljava/lang/Object;

    iput-object v4, v9, Lc/q0;->e:Ljava/lang/Object;

    iput-object v3, v9, Lc/q0;->f:Ljava/lang/Object;

    iput-object v1, v9, Lc/q0;->g:Ljava/lang/Object;

    iput-object v0, v9, Lc/q0;->h:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v9, Lc/q0;->i:Lc/N0;

    iput-wide v12, v9, Lc/q0;->j:J

    iput-wide v10, v9, Lc/q0;->k:J

    const/4 v10, 0x6

    iput v10, v9, Lc/q0;->o:I

    invoke-static {v8, v1, v0, v9}, Lc/M0;->a(Lc/r0;Lc/P0;Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_16
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-ne v8, v2, :cond_e

    :goto_1a
    return-object v2

    :cond_e
    move-object v2, v1

    move-object v8, v14

    .line 61
    :goto_1b
    :try_start_10
    invoke-virtual {v5}, Lg/a0;->c()J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_14
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object v1, v2

    move-object v14, v8

    :cond_f
    move-object v8, v6

    goto :goto_22

    :goto_1c
    move-object v14, v8

    :goto_1d
    move-object v8, v6

    goto/16 :goto_31

    :catch_14
    move-exception v0

    :goto_1e
    move-object v14, v8

    :goto_1f
    move-object v8, v6

    goto/16 :goto_2c

    :catch_15
    move-exception v0

    :goto_20
    move-object/from16 v2, p1

    move-object v14, v8

    :goto_21
    move-object v8, v6

    goto/16 :goto_2e

    :catchall_a
    move-exception v0

    goto :goto_1d

    :catch_16
    move-exception v0

    goto :goto_1f

    :catch_17
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_21

    .line 62
    :goto_22
    :try_start_11
    iget-wide v2, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v2, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v7}, Lg/a0;->b()J

    if-eqz v0, :cond_11

    .line 63
    new-instance v2, Lc/N0;

    invoke-direct {v2, v1, v0}, Lc/N0;-><init>(Lc/P0;Landroid/graphics/Bitmap;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 64
    :try_start_12
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_10

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 65
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :cond_10
    const/4 v15, 0x0

    goto :goto_23

    :catchall_b
    move-exception v0

    move-object v1, v14

    goto/16 :goto_5

    .line 66
    :goto_23
    invoke-interface {v14, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v2

    .line 67
    :cond_11
    :try_start_13
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_12

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 68
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    :goto_24
    move-object v1, v14

    goto/16 :goto_2f

    :cond_12
    :goto_25
    const/4 v15, 0x0

    goto/16 :goto_30

    :cond_13
    move-object/from16 v18, v4

    .line 69
    :try_start_14
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid width/height for thumbnail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :goto_26
    move-object v8, v13

    goto/16 :goto_2

    :goto_27
    move-object v8, v13

    goto/16 :goto_3

    :goto_28
    move-object/from16 v2, p1

    move-object v8, v13

    goto/16 :goto_4

    .line 70
    :cond_14
    :goto_29
    :try_start_15
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_15

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 71
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    :cond_15
    const/4 v15, 0x0

    goto :goto_2a

    :catchall_c
    move-exception v0

    move-object v1, v12

    goto/16 :goto_5

    .line 72
    :goto_2a
    invoke-interface {v12, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v15

    :catchall_d
    move-exception v0

    move-object v8, v4

    goto :goto_31

    :catch_18
    move-exception v0

    goto :goto_2b

    :catch_19
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_2d

    :goto_2b
    move-object v8, v4

    .line 73
    :goto_2c
    :try_start_16
    const-string v1, "getCroppedOriginal out of memory"

    move-object/from16 v2, p1

    .line 74
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 76
    :try_start_17
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_12

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 77
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_24

    :goto_2d
    move-object v8, v4

    .line 78
    :goto_2e
    :try_start_18
    invoke-static {v0}, La/l;->a(Ljava/lang/Exception;)V

    .line 79
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 80
    :try_start_19
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_12

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 81
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    goto :goto_24

    .line 82
    :goto_2f
    :try_start_1a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    move-object v14, v1

    goto :goto_25

    .line 83
    :goto_30
    invoke-interface {v14, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v15

    .line 84
    :goto_31
    :try_start_1b
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_16

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_16

    .line 85
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 86
    :goto_32
    invoke-interface {v1, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lc/P0;Lc/P0;)Z
    .locals 0

    const-string p0, "fromState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "toState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p1, Lc/P0;->a:Lc/a;

    iget-object p1, p2, Lc/P0;->a:Lc/a;

    .line 2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Lc/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lc/o0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc/o0;

    iget v1, v0, Lc/o0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/o0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/o0;

    invoke-direct {v0, p0, p1}, Lc/o0;-><init>(Lc/r0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lc/o0;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lc/o0;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc/o0;->a:Lc/r0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p1, v3

    iget-object v3, p0, Lc/r0;->f:Lc/s1;

    iget-object v2, v3, Lc/s1;->E:Lc/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lc/a;->b()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iput-object p0, v0, Lc/o0;->a:Lc/r0;

    iput p1, v0, Lc/o0;->d:I

    sget-object p1, Lb/o;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v2, Lc/n0;

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lc/n0;-><init>(Lc/s1;ZLandroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p0, p0, Lc/r0;->f:Lc/s1;

    iget-object p0, p0, Lc/s1;->E:Lc/a;

    return-object p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lc/p0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc/p0;

    iget v1, v0, Lc/p0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/p0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/p0;

    invoke-direct {v0, p0, p1}, Lc/p0;-><init>(Lc/r0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lc/p0;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lc/p0;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc/p0;->a:Lc/r0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p1, v3

    iget-object v3, p0, Lc/r0;->f:Lc/s1;

    invoke-virtual {v3}, Lc/s1;->g()Lc/a;

    move-result-object v2

    invoke-virtual {v2}, Lc/a;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v3, Lc/s1;->d:Z

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lc/s1;->g()Lc/a;

    move-result-object v2

    invoke-virtual {v2}, Lc/a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, p1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    iput-object p0, v0, Lc/p0;->a:Lc/r0;

    iput p1, v0, Lc/p0;->d:I

    sget-object p1, Lb/o;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v2, Lc/n0;

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v7}, Lc/n0;-><init>(Lc/s1;ZLandroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    iget-object p0, p0, Lc/r0;->f:Lc/s1;

    invoke-virtual {p0}, Lc/s1;->g()Lc/a;

    move-result-object p0

    return-object p0
.end method
