.class public final Lc/Y0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lg/a0;

.field public b:Ljava/util/ArrayList;

.field public c:Lb/f;

.field public d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public g:Lc/s1;

.field public h:Lkotlin/jvm/functions/Function2;

.field public i:Ljava/util/Iterator;

.field public j:Lg/a0;

.field public k:Landroid/graphics/Bitmap;

.field public l:I

.field public m:Z

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/util/List;

.field public final synthetic q:Lc/s1;

.field public final synthetic r:Lc/z0;


# direct methods
.method public constructor <init>(Ljava/util/List;Lc/s1;Lc/z0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/Y0;->p:Ljava/util/List;

    iput-object p2, p0, Lc/Y0;->q:Lc/s1;

    iput-object p3, p0, Lc/Y0;->r:Lc/z0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lc/Y0;

    iget-object v1, p0, Lc/Y0;->q:Lc/s1;

    iget-object v2, p0, Lc/Y0;->r:Lc/z0;

    iget-object p0, p0, Lc/Y0;->p:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, p2}, Lc/Y0;-><init>(Ljava/util/List;Lc/s1;Lc/z0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lc/Y0;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/Y0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/Y0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/Y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v5, p0

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v5, Lc/Y0;->n:I

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v13, :cond_3

    if-eq v0, v10, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v8, :cond_0

    iget-boolean v0, v5, Lc/Y0;->m:Z

    iget v1, v5, Lc/Y0;->l:I

    iget-object v2, v5, Lc/Y0;->k:Landroid/graphics/Bitmap;

    iget-object v3, v5, Lc/Y0;->j:Lg/a0;

    iget-object v4, v5, Lc/Y0;->i:Ljava/util/Iterator;

    iget-object v14, v5, Lc/Y0;->h:Lkotlin/jvm/functions/Function2;

    iget-object v15, v5, Lc/Y0;->g:Lc/s1;

    iget-object v11, v5, Lc/Y0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v5, Lc/Y0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v5, Lc/Y0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v5, Lc/Y0;->c:Lb/f;

    iget-object v10, v5, Lc/Y0;->b:Ljava/util/ArrayList;

    iget-object v13, v5, Lc/Y0;->a:Lg/a0;

    move/from16 v17, v0

    iget-object v0, v5, Lc/Y0;->o:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v23, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v9

    move/from16 v9, v23

    move-object/from16 v23, v10

    move-object v10, v4

    move-object/from16 v4, v23

    move-object/from16 v23, v7

    move-object/from16 v28, v11

    move-object v11, v12

    move-object v12, v14

    move-object/from16 v26, v15

    move/from16 v14, v17

    const/16 v17, 0x3

    move-object v15, v13

    move-object v13, v8

    goto/16 :goto_e

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, v5, Lc/Y0;->m:Z

    iget v1, v5, Lc/Y0;->l:I

    iget-object v2, v5, Lc/Y0;->j:Lg/a0;

    iget-object v3, v5, Lc/Y0;->i:Ljava/util/Iterator;

    iget-object v4, v5, Lc/Y0;->h:Lkotlin/jvm/functions/Function2;

    iget-object v8, v5, Lc/Y0;->g:Lc/s1;

    iget-object v9, v5, Lc/Y0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v5, Lc/Y0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v5, Lc/Y0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v5, Lc/Y0;->c:Lb/f;

    iget-object v13, v5, Lc/Y0;->b:Ljava/util/ArrayList;

    iget-object v14, v5, Lc/Y0;->a:Lg/a0;

    iget-object v15, v5, Lc/Y0;->o:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v23, v7

    move-object/from16 v18, v15

    const/16 v17, 0x3

    move-object v15, v14

    move-object v14, v13

    move-object v13, v11

    move-object v11, v10

    move-object v10, v3

    move v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_b

    :cond_2
    iget-boolean v0, v5, Lc/Y0;->m:Z

    iget v1, v5, Lc/Y0;->l:I

    iget-object v2, v5, Lc/Y0;->j:Lg/a0;

    iget-object v3, v5, Lc/Y0;->i:Ljava/util/Iterator;

    iget-object v4, v5, Lc/Y0;->h:Lkotlin/jvm/functions/Function2;

    iget-object v8, v5, Lc/Y0;->g:Lc/s1;

    iget-object v9, v5, Lc/Y0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v5, Lc/Y0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v5, Lc/Y0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v5, Lc/Y0;->c:Lb/f;

    iget-object v13, v5, Lc/Y0;->b:Ljava/util/ArrayList;

    iget-object v14, v5, Lc/Y0;->a:Lg/a0;

    iget-object v15, v5, Lc/Y0;->o:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v23, v7

    move-object v7, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v11

    move-object v11, v10

    move-object v10, v3

    move-object v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_9

    :cond_3
    iget-boolean v0, v5, Lc/Y0;->m:Z

    iget v1, v5, Lc/Y0;->l:I

    iget-object v2, v5, Lc/Y0;->j:Lg/a0;

    iget-object v3, v5, Lc/Y0;->i:Ljava/util/Iterator;

    iget-object v4, v5, Lc/Y0;->h:Lkotlin/jvm/functions/Function2;

    iget-object v8, v5, Lc/Y0;->g:Lc/s1;

    iget-object v9, v5, Lc/Y0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v5, Lc/Y0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v5, Lc/Y0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v5, Lc/Y0;->c:Lb/f;

    iget-object v13, v5, Lc/Y0;->b:Ljava/util/ArrayList;

    iget-object v14, v5, Lc/Y0;->a:Lg/a0;

    iget-object v15, v5, Lc/Y0;->o:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v23, v7

    move-object v7, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v11

    move-object v11, v10

    move-object v10, v3

    move-object v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_7

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v5, Lc/Y0;->o:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lg/a0;

    invoke-direct {v1}, Lg/a0;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, La/l;->a()Lb/o;

    move-result-object v3

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sget-object v10, Lc/P0;->f:Lc/P0;

    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v10, v5, Lc/Y0;->p:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    iget-object v11, v5, Lc/Y0;->q:Lc/s1;

    iget-object v12, v5, Lc/Y0;->r:Lc/z0;

    move-object v13, v11

    move-object v11, v8

    move-object v8, v13

    move-object v15, v1

    move-object v14, v2

    move-object v13, v4

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    sget-object v2, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    iget-object v2, v8, Lc/s1;->b0:Lc/A0;

    goto :goto_1

    :cond_6
    iget-object v2, v8, Lc/s1;->a0:Lc/A0;

    goto :goto_1

    :cond_7
    iget-object v2, v8, Lc/s1;->Z:Lc/A0;

    goto :goto_1

    :cond_8
    iget-object v2, v8, Lc/s1;->Y:Lc/A0;

    goto :goto_1

    :cond_9
    iget-object v2, v8, Lc/s1;->X:Lc/g1;

    :goto_1
    if-nez v2, :cond_a

    return-object v7

    :cond_a
    new-instance v4, Lg/a0;

    invoke-direct {v4}, Lg/a0;-><init>()V

    if-nez v1, :cond_b

    const/16 v17, 0x1

    goto :goto_2

    :cond_b
    const/16 v17, 0x0

    :goto_2
    if-eqz v1, :cond_10

    move-object/from16 v23, v7

    const/4 v7, 0x1

    if-eq v1, v7, :cond_f

    const/4 v7, 0x2

    if-eq v1, v7, :cond_e

    const/4 v7, 0x3

    if-eq v1, v7, :cond_d

    const/4 v7, 0x4

    if-eq v1, v7, :cond_c

    const/4 v7, 0x0

    goto :goto_3

    :cond_c
    iget-object v7, v8, Lc/s1;->b0:Lc/A0;

    goto :goto_3

    :cond_d
    iget-object v7, v8, Lc/s1;->a0:Lc/A0;

    goto :goto_3

    :cond_e
    iget-object v7, v8, Lc/s1;->Z:Lc/A0;

    goto :goto_3

    :cond_f
    iget-object v7, v8, Lc/s1;->Y:Lc/A0;

    goto :goto_3

    :cond_10
    move-object/from16 v23, v7

    iget-object v7, v8, Lc/s1;->X:Lc/g1;

    :goto_3
    if-nez v7, :cond_12

    :cond_11
    const/4 v7, 0x0

    goto :goto_5

    :cond_12
    invoke-static {v7}, Lc/M0;->a(Lc/M0;)Z

    move-result v18

    if-eqz v18, :cond_11

    iget-object v7, v7, Lc/M0;->a:Lc/G;

    invoke-virtual {v7}, Lc/G;->d()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    goto :goto_4

    :cond_13
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_11

    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_16

    iput-object v0, v5, Lc/Y0;->o:Ljava/lang/Object;

    iput-object v15, v5, Lc/Y0;->a:Lg/a0;

    iput-object v14, v5, Lc/Y0;->b:Ljava/util/ArrayList;

    iput-object v3, v5, Lc/Y0;->c:Lb/f;

    iput-object v13, v5, Lc/Y0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v11, v5, Lc/Y0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v9, v5, Lc/Y0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v8, v5, Lc/Y0;->g:Lc/s1;

    iput-object v12, v5, Lc/Y0;->h:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lc/Y0;->i:Ljava/util/Iterator;

    iput-object v4, v5, Lc/Y0;->j:Lg/a0;

    move-object/from16 p1, v4

    const/4 v4, 0x0

    iput-object v4, v5, Lc/Y0;->k:Landroid/graphics/Bitmap;

    iput v1, v5, Lc/Y0;->l:I

    iput-boolean v7, v5, Lc/Y0;->m:Z

    const/4 v4, 0x1

    iput v4, v5, Lc/Y0;->n:I

    invoke-static {v2, v5}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_14

    :goto_6
    move-object v0, v6

    goto/16 :goto_d

    :cond_14
    move v4, v7

    move-object v7, v0

    move v0, v4

    move-object v4, v12

    move-object v12, v3

    move-object/from16 v3, p1

    :goto_7
    check-cast v2, Lc/N0;

    if-eqz v2, :cond_15

    move/from16 p1, v0

    iget-object v0, v2, Lc/N0;->a:Lc/P0;

    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v2, Lc/N0;->b:Landroid/graphics/Bitmap;

    :goto_8
    move-object v2, v14

    move-object v14, v4

    move-object v4, v10

    move-object v10, v2

    move-object v2, v15

    move-object v15, v13

    move-object v13, v2

    move-object v2, v0

    move-object v0, v7

    move-object v7, v9

    const/16 v17, 0x3

    move v9, v1

    move/from16 v1, p1

    goto/16 :goto_c

    :cond_15
    move/from16 p1, v0

    goto :goto_a

    :cond_16
    move-object/from16 p1, v4

    if-eqz v17, :cond_18

    iput-object v0, v5, Lc/Y0;->o:Ljava/lang/Object;

    iput-object v15, v5, Lc/Y0;->a:Lg/a0;

    iput-object v14, v5, Lc/Y0;->b:Ljava/util/ArrayList;

    iput-object v3, v5, Lc/Y0;->c:Lb/f;

    iput-object v13, v5, Lc/Y0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v11, v5, Lc/Y0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v9, v5, Lc/Y0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v8, v5, Lc/Y0;->g:Lc/s1;

    iput-object v12, v5, Lc/Y0;->h:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lc/Y0;->i:Ljava/util/Iterator;

    move-object/from16 v4, p1

    iput-object v4, v5, Lc/Y0;->j:Lg/a0;

    const/4 v4, 0x0

    iput-object v4, v5, Lc/Y0;->k:Landroid/graphics/Bitmap;

    iput v1, v5, Lc/Y0;->l:I

    iput-boolean v7, v5, Lc/Y0;->m:Z

    const/4 v4, 0x2

    iput v4, v5, Lc/Y0;->n:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lc/M0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_17

    goto :goto_6

    :cond_17
    move v4, v7

    move-object v7, v0

    move v0, v4

    move-object v4, v12

    move-object v12, v3

    move-object/from16 v3, p1

    :goto_9
    check-cast v2, Lc/N0;

    if-eqz v2, :cond_15

    move/from16 p1, v0

    iget-object v0, v2, Lc/N0;->a:Lc/P0;

    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v2, Lc/N0;->b:Landroid/graphics/Bitmap;

    goto :goto_8

    :goto_a
    move v2, v1

    move v1, v0

    move-object v0, v7

    move-object v7, v9

    move v9, v2

    move-object v2, v14

    move-object v14, v4

    move-object v4, v10

    move-object v10, v2

    move-object v2, v15

    move-object v15, v13

    move-object v13, v2

    const/4 v2, 0x0

    const/16 v17, 0x3

    goto/16 :goto_c

    :cond_18
    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v4, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v17, v2

    move-object v2, v4

    iget-object v4, v8, Lc/s1;->L:Lb/c;

    iput-object v0, v5, Lc/Y0;->o:Ljava/lang/Object;

    iput-object v15, v5, Lc/Y0;->a:Lg/a0;

    iput-object v14, v5, Lc/Y0;->b:Ljava/util/ArrayList;

    iput-object v3, v5, Lc/Y0;->c:Lb/f;

    iput-object v13, v5, Lc/Y0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v11, v5, Lc/Y0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v9, v5, Lc/Y0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v8, v5, Lc/Y0;->g:Lc/s1;

    iput-object v12, v5, Lc/Y0;->h:Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lc/Y0;->i:Ljava/util/Iterator;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iput-object v0, v5, Lc/Y0;->j:Lg/a0;

    const/4 v0, 0x0

    iput-object v0, v5, Lc/Y0;->k:Landroid/graphics/Bitmap;

    iput v1, v5, Lc/Y0;->l:I

    iput-boolean v7, v5, Lc/Y0;->m:Z

    const/4 v0, 0x3

    iput v0, v5, Lc/Y0;->n:I

    check-cast v3, Lb/o;

    move-object/from16 v16, v17

    move/from16 v17, v0

    move-object v0, v3

    move v3, v1

    move-object/from16 v1, v16

    move-object/from16 v16, p1

    invoke-virtual/range {v0 .. v5}, Lb/o;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILb/c;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_19

    goto/16 :goto_6

    :cond_19
    move-object v4, v12

    move-object/from16 v2, v16

    move-object v12, v0

    move v0, v7

    :goto_b
    check-cast v1, Lb/e;

    iget-object v1, v1, Lb/e;->a:Landroid/graphics/Bitmap;

    move-object v7, v14

    move-object v14, v4

    move-object v4, v10

    move-object v10, v7

    move-object v7, v15

    move-object v15, v13

    move-object v13, v7

    move-object v7, v9

    move v9, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object/from16 v0, v18

    :goto_c
    if-eqz v2, :cond_1d

    move-object/from16 p1, v8

    new-instance v8, Lc/N0;

    move-object/from16 v16, v8

    iget-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lc/P0;

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    const-wide/16 v12, 0x0

    move-object/from16 v20, v14

    const/16 v14, 0x1d

    move-object/from16 v21, v7

    move-object v7, v8

    const/4 v8, 0x0

    move-object/from16 v22, v10

    const/4 v10, 0x0

    move-object/from16 v24, v11

    const/4 v11, 0x0

    move-object/from16 v25, v16

    move/from16 v16, v1

    move-object/from16 v1, v25

    move-object/from16 v25, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v25

    move-object/from16 v26, p1

    move-object/from16 v25, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v22

    invoke-static/range {v7 .. v14}, Lc/P0;->a(Lc/P0;Lc/a;IIIJI)Lc/P0;

    move-result-object v7

    invoke-direct {v1, v7, v2}, Lc/N0;-><init>(Lc/P0;Landroid/graphics/Bitmap;)V

    iput-object v0, v5, Lc/Y0;->o:Ljava/lang/Object;

    iput-object v3, v5, Lc/Y0;->a:Lg/a0;

    iput-object v4, v5, Lc/Y0;->b:Ljava/util/ArrayList;

    iput-object v6, v5, Lc/Y0;->c:Lb/f;

    iput-object v15, v5, Lc/Y0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v11, v24

    iput-object v11, v5, Lc/Y0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v7, v21

    iput-object v7, v5, Lc/Y0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v8, v26

    iput-object v8, v5, Lc/Y0;->g:Lc/s1;

    move-object/from16 v10, v20

    iput-object v10, v5, Lc/Y0;->h:Lkotlin/jvm/functions/Function2;

    move-object/from16 v12, v19

    iput-object v12, v5, Lc/Y0;->i:Ljava/util/Iterator;

    move-object/from16 v13, v18

    iput-object v13, v5, Lc/Y0;->j:Lg/a0;

    iput-object v2, v5, Lc/Y0;->k:Landroid/graphics/Bitmap;

    iput v9, v5, Lc/Y0;->l:I

    move/from16 v14, v16

    iput-boolean v14, v5, Lc/Y0;->m:Z

    move-object/from16 v16, v0

    const/4 v0, 0x4

    iput v0, v5, Lc/Y0;->n:I

    invoke-interface {v10, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v25

    if-ne v1, v0, :cond_1a

    :goto_d
    return-object v0

    :cond_1a
    move-object v1, v15

    move-object v15, v3

    move-object v3, v13

    move-object v13, v1

    move-object v1, v12

    move-object v12, v10

    move-object v10, v1

    move-object/from16 v28, v7

    move-object/from16 v26, v8

    move-object/from16 v1, v16

    :goto_e
    new-instance v7, Lc/S0;

    move-object/from16 p1, v6

    invoke-virtual {v3}, Lg/a0;->b()J

    move-result-wide v5

    invoke-direct {v7, v5, v6, v9, v14}, Lc/S0;-><init>(JIZ)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_1c

    const/4 v7, 0x1

    if-eq v9, v7, :cond_1b

    const/4 v5, 0x0

    goto :goto_f

    :cond_1b
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_f

    :cond_1c
    const/4 v5, 0x0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_f
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v24, Lc/X0;

    const/16 v30, 0x0

    move-object/from16 v29, v2

    move/from16 v27, v9

    move/from16 v25, v14

    invoke-direct/range {v24 .. v30}, Lc/X0;-><init>(ZLc/s1;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v2, v24

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v1, v3, v6, v2, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-object/from16 v5, p0

    move-object/from16 v3, p1

    move-object v6, v0

    move-object v0, v1

    move-object v14, v4

    move-object/from16 v7, v23

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    goto/16 :goto_0

    :cond_1d
    const-string v0, "Page"

    const-string v1, "Thumbnail returned null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v23

    :cond_1e
    move-object/from16 v23, v7

    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1f
    iget-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_20
    invoke-virtual {v15}, Lg/a0;->b()J

    new-instance v0, Lc/a$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Lc/a$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v20, 0x0

    const/16 v22, 0x1f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v0

    move-object/from16 v17, v14

    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    return-object v23
.end method
