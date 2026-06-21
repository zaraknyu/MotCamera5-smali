.class public final Lc/n0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public f:Lb/f;

.field public g:Lg/a0;

.field public h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public i:Ljava/lang/String;

.field public j:Landroid/graphics/Bitmap;

.field public k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public m:I

.field public final synthetic n:Lc/s1;

.field public final synthetic o:Z

.field public final synthetic p:Landroid/graphics/Bitmap;

.field public final synthetic r:Z


# direct methods
.method public constructor <init>(Lc/s1;ZLandroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/n0;->n:Lc/s1;

    iput-boolean p2, p0, Lc/n0;->o:Z

    iput-object p3, p0, Lc/n0;->p:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lc/n0;->r:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lc/n0;

    iget-object v3, p0, Lc/n0;->p:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lc/n0;->r:Z

    iget-object v1, p0, Lc/n0;->n:Lc/s1;

    iget-boolean v2, p0, Lc/n0;->o:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc/n0;-><init>(Lc/s1;ZLandroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/n0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/n0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/n0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "Page"

    const-string v2, "getPointsRef(...)"

    iget-object v3, v0, Lc/n0;->p:Landroid/graphics/Bitmap;

    iget-boolean v4, v0, Lc/n0;->o:Z

    iget-object v5, v0, Lc/n0;->n:Lc/s1;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v0, Lc/n0;->m:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    if-eqz v7, :cond_3

    if-eq v7, v12, :cond_2

    if-eq v7, v10, :cond_1

    if-ne v7, v9, :cond_0

    iget v6, v0, Lc/n0;->d:I

    iget v7, v0, Lc/n0;->c:I

    iget v13, v0, Lc/n0;->b:I

    iget v14, v0, Lc/n0;->a:I

    iget-object v15, v0, Lc/n0;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v0, Lc/n0;->j:Landroid/graphics/Bitmap;

    move/from16 v17, v9

    iget-object v9, v0, Lc/n0;->i:Ljava/lang/String;

    move/from16 v18, v10

    iget-object v10, v0, Lc/n0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/16 v19, 0x0

    iget-object v11, v0, Lc/n0;->f:Lb/f;

    iget-object v12, v0, Lc/n0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v21, v4

    move v4, v14

    move-object/from16 v14, p1

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :goto_0
    const/16 v20, 0x1

    goto/16 :goto_1b

    :catch_1
    move-exception v0

    :goto_1
    const/16 v20, 0x1

    goto/16 :goto_1d

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move/from16 v17, v9

    move/from16 v18, v10

    const/16 v19, 0x0

    iget v7, v0, Lc/n0;->d:I

    iget v8, v0, Lc/n0;->c:I

    iget v9, v0, Lc/n0;->b:I

    iget v10, v0, Lc/n0;->a:I

    iget-object v11, v0, Lc/n0;->i:Ljava/lang/String;

    iget-object v12, v0, Lc/n0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v0, Lc/n0;->g:Lg/a0;

    iget-object v14, v0, Lc/n0;->f:Lb/f;

    iget-object v15, v0, Lc/n0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v21, v4

    move-object/from16 v4, p1

    goto/16 :goto_8

    :cond_2
    move/from16 v17, v9

    move/from16 v18, v10

    const/16 v19, 0x0

    iget v7, v0, Lc/n0;->a:I

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, v7

    goto :goto_2

    :cond_3
    move/from16 v17, v9

    move/from16 v18, v10

    const/16 v19, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v7, v5, Lc/s1;->h:Lc/G;

    const/4 v8, 0x1

    iput v8, v0, Lc/n0;->a:I

    iput v8, v0, Lc/n0;->m:I

    invoke-virtual {v7, v0}, Lc/G;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_4

    goto/16 :goto_a

    :cond_4
    const/4 v10, 0x1

    :goto_2
    iget-object v7, v5, Lc/s1;->h:Lc/G;

    invoke-virtual {v7}, Lc/G;->g()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {v5}, Lc/s1;->g()Lc/a;

    move-result-object v7

    invoke-virtual {v7}, Lc/a;->c()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_6
    :try_start_2
    iget-object v7, v5, Lc/s1;->h:Lc/G;

    iget v9, v7, Lc/G;->d:I

    iget v8, v7, Lc/G;->e:I

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-static {}, La/l;->a()Lb/o;

    move-result-object v14

    iget-object v7, v5, Lc/s1;->E:Lc/a;

    iget-object v11, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v11, :cond_7

    if-eqz v7, :cond_7

    iget-object v7, v7, Lc/a;->a:[Landroid/graphics/PointF;

    aget-object v11, v7, v19

    const/16 v20, 0x1

    aget-object v12, v7, v20

    aget-object v13, v7, v18

    aget-object v7, v7, v17

    filled-new-array {v11, v12, v13, v7}, [Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v5, v14, v9, v8, v7}, Lc/s1;->a(Lc/s1;Lb/f;II[Landroid/graphics/PointF;)[Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_7
    iget-object v7, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v7, :cond_20

    if-eqz v4, :cond_1b

    :try_start_3
    new-instance v13, Lg/a0;

    invoke-direct {v13}, Lg/a0;-><init>()V

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iget-object v7, v5, Lc/s1;->e:Lc/J;

    sget-object v11, Lc/J;->b:Lc/J;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v7, v11, :cond_8

    :try_start_4
    iget-object v7, v5, Lc/s1;->h:Lc/G;

    invoke-virtual {v7}, Lc/G;->d()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_d

    sget-object v7, Lc/v;->a:Ljava/lang/Object;

    iget-object v7, v5, Lc/s1;->h:Lc/G;

    invoke-virtual {v7}, Lc/G;->d()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_a

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    :cond_a
    move/from16 v21, v4

    goto :goto_5

    :cond_b
    move/from16 v21, v4

    sget-object v4, Lc/v;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/d;

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v4, 0x0

    :goto_6
    iput-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :cond_d
    move/from16 v21, v4

    :goto_7
    :try_start_5
    iget-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_14

    if-nez v3, :cond_10

    iget-object v4, v5, Lc/s1;->A:Lc/e1;

    iput-object v15, v0, Lc/n0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v14, v0, Lc/n0;->f:Lb/f;

    iput-object v13, v0, Lc/n0;->g:Lg/a0;

    iput-object v12, v0, Lc/n0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v11, v0, Lc/n0;->i:Ljava/lang/String;

    iput v10, v0, Lc/n0;->a:I

    iput v9, v0, Lc/n0;->b:I

    iput v8, v0, Lc/n0;->c:I

    move/from16 v7, v19

    iput v7, v0, Lc/n0;->d:I

    move/from16 v7, v18

    iput v7, v0, Lc/n0;->m:I

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v0}, Lc/M0;->a$1(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_e

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_8
    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_f

    move/from16 v23, v10

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    move-object/from16 v23, v15

    move-object v15, v12

    move-object/from16 v12, v23

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Couldn\'t load original image bitmap"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const/16 v19, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_10
    move v4, v10

    move v10, v9

    move-object v9, v11

    move v11, v4

    move-object v4, v15

    move-object v15, v12

    move-object v12, v4

    move-object v4, v3

    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v13}, Lg/a0;->a()J

    sget-object v22, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    iput-object v12, v0, Lc/n0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v14, v0, Lc/n0;->f:Lb/f;

    iput-object v13, v0, Lc/n0;->g:Lg/a0;

    iput-object v15, v0, Lc/n0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v9, v0, Lc/n0;->i:Ljava/lang/String;

    iput-object v4, v0, Lc/n0;->j:Landroid/graphics/Bitmap;

    iput-object v15, v0, Lc/n0;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v11, v0, Lc/n0;->a:I

    iput v10, v0, Lc/n0;->b:I

    iput v8, v0, Lc/n0;->c:I

    iput v7, v0, Lc/n0;->d:I

    move/from16 v13, v17

    iput v13, v0, Lc/n0;->m:I

    move-object v13, v14

    check-cast v13, Lb/o;

    invoke-virtual {v13, v4, v0}, Lb/o;->a(Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v6, :cond_11

    :goto_a
    return-object v6

    :cond_11
    move v6, v7

    move v7, v8

    move-object v8, v4

    move v4, v11

    move-object v11, v13

    move v13, v10

    move-object v10, v15

    :goto_b
    iput-object v14, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v9, :cond_12

    sget-object v14, Lc/v;->a:Ljava/lang/Object;

    iget-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Lb/d;

    sget-object v15, Lc/v;->a:Ljava/lang/Object;

    monitor-enter v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 p1, v4

    :try_start_6
    sget-object v4, Lc/v;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v15

    goto :goto_c

    :catchall_0
    move-exception v0

    monitor-exit v15

    throw v0

    :cond_12
    move/from16 p1, v4

    :goto_c
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    move v8, v7

    move-object v14, v11

    move-object v15, v12

    move v9, v13

    move-object v12, v10

    move/from16 v10, p1

    goto :goto_d

    :cond_14
    const/4 v6, 0x0

    :goto_d
    iget-object v3, v5, Lc/s1;->e:Lc/J;

    sget-object v4, Lc/J;->b:Lc/J;

    if-ne v3, v4, :cond_18

    iget-object v3, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lb/d;

    iget-object v4, v4, Lb/d;->a:[Lcom/adobe/magic_clean/CCornersInfo;

    const/16 v19, 0x0

    aget-object v4, v4, v19

    move-object v6, v3

    check-cast v6, Lb/d;

    iget-object v6, v6, Lb/d;->a:[Lcom/adobe/magic_clean/CCornersInfo;

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_15

    check-cast v3, Lb/d;

    iget-object v3, v3, Lb/d;->a:[Lcom/adobe/magic_clean/CCornersInfo;

    aget-object v3, v3, v7

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v4}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v6

    if-eqz v6, :cond_17

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_f

    :cond_16
    const/16 v16, 0x0

    :goto_f
    if-eqz v16, :cond_17

    invoke-virtual {v4}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v3}, Lc/s1;->a(Lc/s1;[Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z

    :cond_17
    const/4 v6, 0x1

    goto :goto_10

    :cond_18
    iget-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lb/d;

    iget-object v2, v2, Lb/d;->a:[Lcom/adobe/magic_clean/CCornersInfo;

    const/16 v19, 0x0

    aget-object v4, v2, v19

    :goto_10
    iget-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lb/d;

    iget-object v2, v2, Lb/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_19

    new-instance v3, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v7, 0xe1

    invoke-static {v2, v7, v7, v3}, Lkotlin/text/StringsKt;->windowed(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    :cond_19
    sget-object v2, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    iget-object v2, v5, Lc/s1;->c:La/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v5, Lc/s1;->c:La/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/adobe/magic_clean/CCornersInfo;->getClonedPoints()[Landroid/graphics/PointF;

    move-result-object v2

    iput-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_11

    :cond_1a
    const/4 v10, 0x0

    goto :goto_11

    :cond_1b
    move/from16 v21, v4

    const/4 v6, 0x0

    :goto_11
    :try_start_8
    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_6

    if-nez v2, :cond_1c

    :try_start_9
    new-instance v2, Lc/a;

    invoke-direct {v2}, Lc/a;-><init>()V

    iget-object v2, v2, Lc/a;->a:[Landroid/graphics/PointF;

    iput-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_13

    :cond_1c
    :try_start_a
    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v2

    :goto_12
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v3, :cond_1d

    :try_start_b
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v4, v11, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v11, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_12

    :cond_1d
    :goto_13
    :try_start_c
    iget-object v2, v5, Lc/s1;->e:Lc/J;

    sget-object v3, Lc/J;->b:Lc/J;

    if-ne v2, v3, :cond_1e

    if-eqz v6, :cond_1e

    sget v2, Lc/g0;->$r8$clinit:I

    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Landroid/graphics/PointF;

    const/16 v19, 0x0

    aget-object v3, v3, v19

    move-object v4, v2

    check-cast v4, [Landroid/graphics/PointF;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_6

    const/16 v20, 0x1

    :try_start_d
    aget-object v4, v4, v20
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_4

    :try_start_e
    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v6, v2

    check-cast v6, [Landroid/graphics/PointF;

    aget-object v6, v6, v19

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v6

    const/4 v7, 0x2

    int-to-float v6, v7

    div-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/PointF;->x:F

    move-object v3, v2

    check-cast v3, [Landroid/graphics/PointF;

    aget-object v3, v3, v19

    move-object v4, v2

    check-cast v4, [Landroid/graphics/PointF;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_6

    const/16 v20, 0x1

    :try_start_f
    aget-object v4, v4, v20

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v7, v2

    check-cast v7, [Landroid/graphics/PointF;

    aget-object v7, v7, v19

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v7

    div-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/PointF;->y:F

    move-object v3, v2

    check-cast v3, [Landroid/graphics/PointF;

    const/16 v17, 0x3

    aget-object v3, v3, v17

    move-object v4, v2

    check-cast v4, [Landroid/graphics/PointF;

    const/16 v18, 0x2

    aget-object v4, v4, v18

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v7, v2

    check-cast v7, [Landroid/graphics/PointF;

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v7

    div-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/PointF;->x:F

    move-object v3, v2

    check-cast v3, [Landroid/graphics/PointF;

    aget-object v3, v3, v17

    move-object v4, v2

    check-cast v4, [Landroid/graphics/PointF;

    const/16 v18, 0x2

    aget-object v4, v4, v18

    iget v4, v4, Landroid/graphics/PointF;->y:F

    check-cast v2, [Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v2

    div-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_16

    :catch_4
    move-exception v0

    :goto_14
    const/16 v19, 0x0

    goto :goto_1b

    :catch_5
    move-exception v0

    :goto_15
    const/16 v19, 0x0

    goto/16 :goto_1d

    :catch_6
    move-exception v0

    const/16 v20, 0x1

    goto :goto_14

    :catch_7
    move-exception v0

    const/16 v20, 0x1

    goto :goto_15

    :cond_1e
    const/16 v20, 0x1

    :goto_16
    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/PointF;

    invoke-static {v5, v14, v9, v8, v2}, Lc/s1;->a(Lc/s1;Lb/f;II[Landroid/graphics/PointF;)[Landroid/graphics/PointF;

    move-result-object v2

    iput-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v21, :cond_21

    if-eqz v2, :cond_1f

    new-instance v3, Lc/a;

    invoke-direct {v3, v2}, Lc/a;-><init>([Landroid/graphics/PointF;)V

    goto :goto_17

    :cond_1f
    new-instance v3, Lc/a;

    invoke-direct {v3}, Lc/a;-><init>()V

    :goto_17
    new-instance v2, Lc/a;

    invoke-direct {v2, v3}, Lc/a;-><init>(Lc/a;)V

    iput-object v2, v5, Lc/s1;->E:Lc/a;

    goto :goto_18

    :cond_20
    const/16 v20, 0x1

    :cond_21
    :goto_18
    iget-boolean v0, v0, Lc/n0;->r:Z

    if-eqz v0, :cond_23

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Landroid/graphics/PointF;

    if-eqz v2, :cond_22

    new-instance v2, Lc/a;

    check-cast v0, [Landroid/graphics/PointF;

    invoke-direct {v2, v0}, Lc/a;-><init>([Landroid/graphics/PointF;)V

    goto :goto_19

    :cond_22
    new-instance v2, Lc/a;

    invoke-direct {v2}, Lc/a;-><init>()V

    :goto_19
    iget-object v0, v5, Lc/s1;->D:Lc/k1;

    sget-object v3, Lc/s1;->d0:[Lkotlin/reflect/KProperty;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_4

    const/16 v19, 0x0

    :try_start_10
    aget-object v3, v3, v19

    invoke-virtual {v0, v2, v3}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_1a

    :catch_8
    move-exception v0

    goto :goto_1b

    :catch_9
    move-exception v0

    goto :goto_1d

    :cond_23
    const/16 v19, 0x0

    :goto_1a
    move v7, v10

    goto :goto_1e

    :goto_1b
    const-string v1, "cropWithMagicClean out of memory"

    const-string v2, "Page"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    :goto_1c
    move/from16 v7, v19

    goto :goto_1e

    :goto_1d
    invoke-static {v0}, La/l;->a(Ljava/lang/Exception;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :goto_1e
    if-eqz v7, :cond_24

    move/from16 v11, v20

    goto :goto_1f

    :cond_24
    move/from16 v11, v19

    :goto_1f
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
