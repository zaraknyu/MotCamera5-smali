.class public final Lc/h0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public f:Ljava/lang/Object;

.field public g:Landroid/graphics/Bitmap;

.field public h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public i:I

.field public final synthetic j:Lc/s1;

.field public final synthetic k:I

.field public final synthetic l:Lc/j0;


# direct methods
.method public constructor <init>(Lc/s1;ILc/j0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/h0;->j:Lc/s1;

    iput p2, p0, Lc/h0;->k:I

    iput-object p3, p0, Lc/h0;->l:Lc/j0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lc/h0;

    iget v0, p0, Lc/h0;->k:I

    iget-object v1, p0, Lc/h0;->l:Lc/j0;

    iget-object p0, p0, Lc/h0;->j:Lc/s1;

    invoke-direct {p1, p0, v0, v1, p2}, Lc/h0;-><init>(Lc/s1;ILc/j0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/h0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/h0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/h0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v6, p0

    iget-object v7, v6, Lc/h0;->j:Lc/s1;

    iget-object v8, v7, Lc/s1;->c:La/x;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v6, Lc/h0;->i:I

    const/4 v10, 0x5

    const/4 v1, 0x4

    const/4 v11, 0x2

    iget-object v2, v6, Lc/h0;->l:Lc/j0;

    const-string v13, "Page"

    const/4 v14, 0x0

    const/4 v3, 0x3

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v15, :cond_4

    if-eq v0, v11, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v10, :cond_0

    iget v1, v6, Lc/h0;->a:I

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_11

    :catch_1
    move-exception v0

    goto/16 :goto_14

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v6, Lc/h0;->c:I

    iget v1, v6, Lc/h0;->b:I

    iget v2, v6, Lc/h0;->a:I

    iget-object v3, v6, Lc/h0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v6, Lc/h0;->g:Landroid/graphics/Bitmap;

    iget-object v5, v6, Lc/h0;->f:Ljava/lang/Object;

    check-cast v5, Lc/N0;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v3

    move v3, v0

    move-object/from16 v0, p1

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move v1, v2

    goto/16 :goto_11

    :catch_3
    move-exception v0

    move v1, v2

    goto/16 :goto_14

    :cond_2
    iget v0, v6, Lc/h0;->c:I

    iget v2, v6, Lc/h0;->b:I

    iget v4, v6, Lc/h0;->a:I

    iget-object v5, v6, Lc/h0;->f:Ljava/lang/Object;

    check-cast v5, Lb/f;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v1, p1

    move v10, v2

    move v11, v4

    :goto_0
    move v3, v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move v1, v4

    goto/16 :goto_11

    :catch_5
    move-exception v0

    move v1, v4

    goto/16 :goto_14

    :cond_3
    iget v1, v6, Lc/h0;->a:I

    iget-object v0, v6, Lc/h0;->f:Ljava/lang/Object;

    check-cast v0, Lc/s1;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v0, Lc/k0;

    invoke-direct {v0, v11}, Lc/k0;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :cond_4
    iget v0, v6, Lc/h0;->c:I

    iget v4, v6, Lc/h0;->b:I

    iget v5, v6, Lc/h0;->a:I

    iget-object v11, v6, Lc/h0;->f:Ljava/lang/Object;

    check-cast v11, Lb/f;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_a

    goto/16 :goto_7

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lc/s1;->k()I

    move-result v0

    const/4 v4, -0x1

    if-ne v4, v0, :cond_6

    move v0, v15

    goto :goto_1

    :cond_6
    move v0, v14

    :goto_1
    iget v5, v6, Lc/h0;->k:I

    if-ne v4, v5, :cond_9

    if-eqz v0, :cond_9

    sget-object v5, Lg/x;->g:Lg/w;

    iget-object v11, v5, Lg/w;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eq v11, v4, :cond_7

    iget-object v5, v5, Lg/w;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_2

    :cond_7
    iget-object v5, v7, Lc/s1;->e:Lc/J;

    sget-object v11, Lc/J;->a:Lc/J;

    if-ne v5, v11, :cond_8

    move v5, v3

    goto :goto_2

    :cond_8
    move v5, v15

    :cond_9
    :goto_2
    iget-object v11, v7, Lc/s1;->h:Lc/G;

    invoke-virtual {v11}, Lc/G;->g()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v0, "cleanWithMagicClean encountered empty mOriginalImageRendition"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/k0;

    invoke-direct {v0, v3}, Lc/k0;-><init>(I)V

    return-object v0

    :cond_a
    if-ne v4, v5, :cond_b

    const-string v0, "cleanWithMagicClean encountered invalid Filter"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/k0;

    invoke-direct {v0, v3}, Lc/k0;-><init>(I)V

    return-object v0

    :cond_b
    :try_start_5
    invoke-static {}, La/l;->a()Lb/o;

    move-result-object v11

    iget-object v10, v2, Lc/M0;->d:Lc/P0;

    iget-object v12, v10, Lc/P0;->a:Lc/a;

    iget v1, v10, Lc/P0;->b:I

    invoke-virtual {v7}, Lc/s1;->g()Lc/a;

    move-result-object v3

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_c

    if-eqz v3, :cond_d

    :try_start_6
    iget-object v3, v10, Lc/P0;->a:Lc/a;

    invoke-virtual {v3}, Lc/a;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    move v3, v14

    goto :goto_4

    :catch_6
    move-exception v0

    move v1, v14

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move v1, v14

    goto/16 :goto_14

    :cond_d
    :goto_3
    move v3, v15

    :goto_4
    if-ne v1, v5, :cond_f

    invoke-virtual {v7}, Lc/s1;->k()I

    move-result v10

    if-ne v1, v10, :cond_f

    if-ne v4, v1, :cond_e

    goto :goto_5

    :cond_e
    move v1, v14

    goto :goto_6

    :cond_f
    :goto_5
    move v1, v15

    :goto_6
    if-nez v3, :cond_10

    if-nez v1, :cond_10

    iget-object v3, v2, Lc/M0;->a:Lc/G;

    invoke-virtual {v3}, Lc/G;->g()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_10
    if-eqz v1, :cond_11

    iput-object v11, v6, Lc/h0;->f:Ljava/lang/Object;

    iput v14, v6, Lc/h0;->a:I

    iput v0, v6, Lc/h0;->b:I

    iput v5, v6, Lc/h0;->c:I

    iput v15, v6, Lc/h0;->i:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    invoke-virtual {v2, v6}, Lc/M0;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_c

    if-ne v1, v9, :cond_11

    goto/16 :goto_e

    :cond_11
    move v4, v0

    move v0, v5

    move v5, v14

    :goto_7
    :try_start_8
    new-instance v1, Lc/P0;

    invoke-virtual {v7}, Lc/s1;->g()Lc/a;

    move-result-object v3

    const/16 v10, 0x1c

    invoke-direct {v1, v3, v0, v10}, Lc/P0;-><init>(Lc/a;II)V

    invoke-static {v2, v1}, Lc/j0;->a(Lc/j0;Lc/P0;)V

    iget-object v1, v7, Lc/s1;->C:Lc/r0;

    iput-object v11, v6, Lc/h0;->f:Ljava/lang/Object;

    iput v5, v6, Lc/h0;->a:I

    iput v4, v6, Lc/h0;->b:I

    iput v0, v6, Lc/h0;->c:I

    const/4 v2, 0x3

    iput v2, v6, Lc/h0;->i:I

    invoke-virtual {v1, v15, v6}, Lc/r0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_a

    if-ne v1, v9, :cond_12

    goto/16 :goto_e

    :cond_12
    move-object v3, v11

    move v11, v5

    move-object v5, v3

    move v10, v4

    goto/16 :goto_0

    :goto_8
    :try_start_9
    move-object v12, v1

    check-cast v12, Lc/N0;

    if-nez v12, :cond_13

    new-instance v0, Lc/k0;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lc/k0;-><init>(I)V

    return-object v0

    :cond_13
    iget-object v1, v12, Lc/N0;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-nez v3, :cond_14

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v1

    const/4 v1, 0x0

    goto :goto_c

    :cond_14
    new-instance v2, Lc/a;

    invoke-direct {v2}, Lc/a;-><init>()V

    iget-object v2, v2, Lc/a;->a:[Landroid/graphics/PointF;

    if-eqz v10, :cond_15

    move v4, v15

    :goto_9
    move-object/from16 v16, v5

    goto :goto_a

    :cond_15
    move v4, v14

    goto :goto_9

    :goto_a
    iget-object v5, v7, Lc/s1;->K:Ljava/lang/Object;

    iput-object v12, v6, Lc/h0;->f:Ljava/lang/Object;

    iput-object v1, v6, Lc/h0;->g:Landroid/graphics/Bitmap;

    iput-object v0, v6, Lc/h0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v11, v6, Lc/h0;->a:I

    iput v10, v6, Lc/h0;->b:I

    iput v3, v6, Lc/h0;->c:I

    const/4 v14, 0x4

    iput v14, v6, Lc/h0;->i:I

    move-object/from16 v14, v16

    check-cast v14, Lb/o;

    move-object/from16 v25, v14

    move-object v14, v0

    move-object/from16 v0, v25

    invoke-virtual/range {v0 .. v6}, Lb/o;->a(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;IZLjava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_8

    if-ne v0, v9, :cond_16

    goto/16 :goto_e

    :cond_16
    move-object v4, v1

    move v1, v10

    move v2, v11

    move-object v5, v12

    :goto_b
    :try_start_a
    move-object v10, v0

    check-cast v10, Lb/a;

    iget-object v10, v10, Lb/a;->a:Landroid/graphics/Bitmap;

    iput-object v10, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lb/a;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2

    move v10, v1

    move v11, v2

    move-object v12, v5

    move-object v1, v0

    move-object v0, v14

    :goto_c
    :try_start_b
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_17
    if-eqz v1, :cond_18

    iget-object v2, v1, Lb/a;->c:Ljava/lang/Object;

    iput-object v2, v7, Lc/s1;->K:Ljava/lang/Object;

    iget-object v2, v1, Lb/a;->b:Lb/c;

    iput-object v2, v7, Lc/s1;->L:Lb/c;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_18
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    if-eqz v10, :cond_19

    if-eqz v1, :cond_19

    iget-object v1, v1, Lb/a;->b:Lb/c;

    iget-boolean v1, v1, Lb/c;->a:Z

    if-ne v1, v15, :cond_19

    const/16 v19, 0x2

    goto :goto_d

    :cond_19
    move/from16 v19, v3

    :goto_d
    iget-object v1, v12, Lc/N0;->a:Lc/P0;

    const-wide/16 v22, 0x0

    const/16 v24, 0x1d

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v17 .. v24}, Lc/P0;->a(Lc/P0;Lc/a;IIIJI)Lc/P0;

    move-result-object v1

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    iput-object v2, v6, Lc/h0;->f:Ljava/lang/Object;

    iput-object v2, v6, Lc/h0;->g:Landroid/graphics/Bitmap;

    iput-object v2, v6, Lc/h0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v11, v6, Lc/h0;->a:I

    const/4 v2, 0x5

    iput v2, v6, Lc/h0;->i:I

    invoke-static {v7, v0, v1, v6}, Lc/s1;->a(Lc/s1;Landroid/graphics/Bitmap;Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_8

    if-ne v0, v9, :cond_1a

    :goto_e
    return-object v9

    :catch_8
    move-exception v0

    move v1, v11

    goto :goto_11

    :catch_9
    move-exception v0

    move v1, v11

    goto :goto_14

    :cond_1a
    :goto_f
    move v11, v15

    goto :goto_15

    :catch_a
    move-exception v0

    move v1, v5

    goto :goto_11

    :catch_b
    move-exception v0

    move v1, v5

    goto :goto_14

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_d
    move-exception v0

    goto :goto_13

    :goto_10
    const/4 v1, 0x0

    :goto_11
    const-string v2, "cropAndCleanWithMagicClean out of memory"

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    :goto_12
    move v11, v1

    goto :goto_15

    :goto_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {v0}, La/l;->a(Ljava/lang/Exception;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_1b
    :goto_15
    new-instance v0, Lc/k0;

    if-eqz v11, :cond_1c

    move v14, v15

    goto :goto_16

    :cond_1c
    const/4 v14, 0x0

    :goto_16
    invoke-direct {v0, v14}, Lc/k0;-><init>(Z)V

    return-object v0
.end method
