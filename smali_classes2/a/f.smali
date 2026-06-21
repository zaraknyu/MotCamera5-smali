.class public La/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/ColorProducer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, La/f;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/f;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La/f;->$r8$classId:I

    iput-object p2, p0, La/f;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc/h;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La/f;->$r8$classId:I

    .line 4
    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, La/f;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(La/s;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    sget-object v2, Lc/f;->b:Lc/f;

    instance-of v3, v0, La/d;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, La/d;

    iget v4, v3, La/d;->r:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, La/d;->r:I

    goto :goto_0

    :cond_0
    new-instance v3, La/d;

    invoke-direct {v3, v1, v0}, La/d;-><init>(La/f;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v3, La/d;->p:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v5, v3, La/d;->r:I

    const-string v6, "MX"

    const-string v7, "CA"

    const-string v8, "US"

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-eqz v5, :cond_6

    if-eq v5, v14, :cond_5

    if-eq v5, v12, :cond_4

    if-eq v5, v11, :cond_3

    if-eq v5, v10, :cond_2

    if-ne v5, v9, :cond_1

    iget-wide v1, v3, La/d;->o:J

    iget-wide v5, v3, La/d;->n:J

    iget-wide v7, v3, La/d;->m:J

    iget-object v10, v3, La/d;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v3, La/d;->f:Ljava/lang/Object;

    check-cast v11, Lc/f;

    iget-object v12, v3, La/d;->e:Ljava/lang/Object;

    check-cast v12, Lg/a0;

    iget-object v13, v3, La/d;->d:La/s;

    iget-object v14, v3, La/d;->c:Ljava/lang/AutoCloseable;

    iget-object v9, v3, La/d;->b:Lg/a0;

    iget-object v15, v3, La/d;->a:La/f;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v9

    move-object/from16 v24, v15

    move-object v15, v0

    const/4 v0, 0x5

    move-wide/from16 v25, v1

    move-object v1, v4

    move-object/from16 v2, v24

    move-wide/from16 v27, v7

    move-wide/from16 v8, v25

    move-wide v6, v5

    move-wide/from16 v4, v27

    goto/16 :goto_27

    :catchall_0
    move-exception v0

    :goto_1
    move-object v1, v0

    goto/16 :goto_29

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v1, v3, La/d;->o:J

    iget-wide v5, v3, La/d;->n:J

    iget-wide v7, v3, La/d;->m:J

    iget-object v9, v3, La/d;->i:Ljava/util/Iterator;

    iget-object v11, v3, La/d;->h:Ljava/lang/Object;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v3, La/d;->g:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v15, v3, La/d;->f:Ljava/lang/Object;

    check-cast v15, Lc/f;

    move/from16 v17, v14

    iget-object v14, v3, La/d;->e:Ljava/lang/Object;

    check-cast v14, Lg/a0;

    iget-object v10, v3, La/d;->d:La/s;

    iget-object v13, v3, La/d;->c:Ljava/lang/AutoCloseable;

    move-object/from16 v19, v0

    iget-object v0, v3, La/d;->b:Lg/a0;

    move-wide/from16 p0, v1

    iget-object v1, v3, La/d;->a:La/f;

    :try_start_1
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v2, v19

    move-object/from16 v19, v0

    move-object v0, v2

    move-wide/from16 v22, p0

    move-object/from16 v21, v1

    move-object v1, v4

    move-object v2, v14

    goto/16 :goto_23

    :catchall_1
    move-exception v0

    move-object v15, v1

    move-object v14, v13

    goto :goto_1

    :cond_3
    move-object/from16 v19, v0

    move/from16 v17, v14

    iget-wide v0, v3, La/d;->n:J

    iget-wide v5, v3, La/d;->m:J

    iget-object v7, v3, La/d;->g:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v3, La/d;->f:Ljava/lang/Object;

    check-cast v8, Lg/a0;

    iget-object v9, v3, La/d;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, La/d;->d:La/s;

    iget-object v11, v3, La/d;->c:Ljava/lang/AutoCloseable;

    iget-object v12, v3, La/d;->b:Lg/a0;

    iget-object v13, v3, La/d;->a:La/f;

    :try_start_2
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v24, v19

    move-object/from16 v19, v2

    move-wide v1, v0

    move-object/from16 v0, v24

    move-wide/from16 v24, v5

    move-object v5, v3

    move-object v3, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v24

    goto/16 :goto_1a

    :catchall_2
    move-exception v0

    move-object v14, v11

    move-object v15, v13

    goto :goto_1

    :catch_0
    move-object/from16 v19, v2

    move-wide v6, v5

    move-object v5, v3

    move-object v3, v11

    goto/16 :goto_1e

    :cond_4
    move-object/from16 v19, v0

    move/from16 v17, v14

    iget-wide v0, v3, La/d;->m:J

    iget v5, v3, La/d;->l:I

    iget v6, v3, La/d;->k:I

    iget-object v7, v3, La/d;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v3, La/d;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v3, La/d;->f:Ljava/lang/Object;

    check-cast v9, Lg/a0;

    iget-object v10, v3, La/d;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v13, v3, La/d;->d:La/s;

    iget-object v14, v3, La/d;->c:Ljava/lang/AutoCloseable;

    iget-object v15, v3, La/d;->b:Lg/a0;

    iget-object v11, v3, La/d;->a:La/f;

    :try_start_3
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v19, v5

    move-object v5, v3

    move-object v3, v14

    move/from16 v14, v19

    move-object/from16 v19, v2

    move v2, v6

    move-object/from16 v22, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v13

    move-object/from16 v24, v11

    move-object v11, v7

    move-wide v6, v0

    move-object/from16 v1, v24

    move v0, v12

    move-object v12, v15

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    move-object v15, v11

    goto/16 :goto_1

    :cond_5
    move-object/from16 v19, v0

    move/from16 v17, v14

    iget v0, v3, La/d;->k:I

    iget-object v1, v3, La/d;->i:Ljava/util/Iterator;

    iget-object v5, v3, La/d;->h:Ljava/lang/Object;

    check-cast v5, Lg/a0;

    iget-object v9, v3, La/d;->g:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, La/d;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v3, La/d;->e:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v13, v3, La/d;->d:La/s;

    iget-object v14, v3, La/d;->c:Ljava/lang/AutoCloseable;

    iget-object v15, v3, La/d;->b:Lg/a0;

    iget-object v12, v3, La/d;->a:La/f;

    :try_start_4
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v19, v15

    move-object v15, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v2

    move-object v2, v14

    const/4 v14, 0x0

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v15, v12

    goto/16 :goto_29

    :cond_6
    move-object/from16 v19, v0

    move/from16 v17, v14

    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lg/a0;

    invoke-direct {v0}, Lg/a0;-><init>()V

    .line 3
    :try_start_5
    iget-object v5, v1, La/f;->a:Ljava/lang/Object;

    check-cast v5, Lc/h;

    .line 4
    iget v9, v5, Lc/h;->f:I

    add-int/lit8 v9, v9, 0x1

    .line 5
    iput v9, v5, Lc/h;->f:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1b

    .line 6
    :try_start_6
    iget-object v5, v5, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 7
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 10
    new-instance v11, Lg/a0;

    invoke-direct {v11}, Lg/a0;-><init>()V

    .line 11
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_18

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    move-object v15, v0

    move-object v13, v5

    move-object/from16 v0, p1

    move-object v5, v3

    move-object v3, v0

    :goto_2
    :try_start_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc/X;

    move-object/from16 p0, v0

    .line 12
    iget-object v0, v14, Lc/X;->r:Lc/z1;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object/from16 p1, v1

    .line 13
    :try_start_8
    sget-object v1, Lc/z1;->l:Lc/z1;

    if-eq v0, v1, :cond_7

    move-object/from16 v19, v2

    sget-object v2, Lc/z1;->a:Lc/z1;

    if-eq v0, v2, :cond_8

    move/from16 v2, v17

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v1, p1

    goto/16 :goto_13

    :cond_7
    move-object/from16 v19, v2

    :cond_8
    const/4 v2, 0x0

    :goto_3
    if-ne v0, v1, :cond_c

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v1

    const-string v1, "getCountry(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v1, v14, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 16
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v14, 0x0

    .line 17
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/s1;

    invoke-virtual {v1}, Lc/s1;->g()Lc/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/a;->c()Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, v22

    goto/16 :goto_a

    .line 18
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 19
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 20
    :cond_a
    sget-object v0, Lc/z1;->h:Lc/z1;

    goto/16 :goto_a

    .line 21
    :cond_b
    :goto_4
    sget-object v0, Lc/z1;->b:Lc/z1;

    goto/16 :goto_a

    :cond_c
    const/4 v14, 0x0

    .line 22
    sget-object v1, Lc/z1;->a:Lc/z1;

    if-ne v0, v1, :cond_10

    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v14, v0

    move v0, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object v12, v15

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    .line 24
    :goto_5
    :try_start_9
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 p0, v0

    .line 25
    const-string v0, "type"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lc/z1;->a:Lc/z1;

    if-eq v14, v0, :cond_d

    goto :goto_8

    .line 27
    :cond_d
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 28
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    .line 29
    :cond_e
    sget-object v0, Lc/z1;->h:Lc/z1;

    :goto_6
    move-object v14, v0

    goto :goto_8

    .line 30
    :cond_f
    :goto_7
    sget-object v0, Lc/z1;->b:Lc/z1;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_6

    :goto_8
    move-object v0, v12

    move-object v12, v1

    move-object v1, v15

    move-object v15, v0

    move-object v0, v13

    move-object v13, v11

    move-object v11, v5

    move-object v5, v3

    move-object v3, v2

    move/from16 v2, p0

    goto :goto_b

    :goto_9
    move-object v1, v0

    move-object v14, v2

    goto/16 :goto_29

    :catchall_6
    move-exception v0

    goto :goto_9

    :cond_10
    :goto_a
    move-object/from16 v1, p1

    move-object v14, v0

    move-object/from16 v0, p0

    .line 31
    :goto_b
    :try_start_a
    invoke-static {v14}, La/l;->a(Lc/z1;)Lc/A1;

    move-result-object v14

    if-eqz v2, :cond_11

    move/from16 v2, v17

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    .line 32
    :goto_c
    iput-boolean v2, v14, Lc/A1;->c:Z

    .line 33
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 v2, v19

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    move-object/from16 p1, v1

    goto/16 :goto_13

    :cond_12
    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 v19, v2

    .line 34
    :try_start_b
    invoke-virtual {v11}, Lg/a0;->a()J

    move-result-wide v0

    .line 35
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/16 v6, 0x19

    if-gt v2, v6, :cond_13

    move/from16 v2, v17

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    .line 36
    :goto_d
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-wide v8, v0

    move-object v0, v6

    move-wide v6, v8

    move-object/from16 v10, p0

    move-object/from16 v1, p1

    move-object v8, v11

    move-object v9, v13

    move-object v12, v15

    const/4 v11, 0x0

    :goto_e
    :try_start_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    if-eqz v13, :cond_18

    :try_start_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v11, 0x1

    if-ltz v11, :cond_17

    check-cast v13, Lc/X;

    .line 37
    iget-object v11, v13, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 38
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 39
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :goto_f
    :try_start_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc/s1;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 40
    :try_start_f
    iget-object v13, v13, Lc/s1;->T:Lc/D0;

    if-eqz v2, :cond_14

    move/from16 v15, v17

    goto :goto_10

    :cond_14
    const/4 v15, 0x0

    .line 41
    :goto_10
    iput-object v1, v5, La/d;->a:La/f;

    iput-object v12, v5, La/d;->b:Lg/a0;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    iput-object v3, v5, La/d;->c:Ljava/lang/AutoCloseable;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :try_start_11
    iput-object v10, v5, La/d;->d:La/s;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    iput-object v9, v5, La/d;->e:Ljava/lang/Object;

    iput-object v8, v5, La/d;->f:Ljava/lang/Object;

    iput-object v0, v5, La/d;->g:Ljava/lang/Object;

    iput-object v11, v5, La/d;->h:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move-object/from16 v22, v0

    const/4 v0, 0x0

    :try_start_13
    iput-object v0, v5, La/d;->i:Ljava/util/Iterator;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :try_start_14
    iput v2, v5, La/d;->k:I

    iput v14, v5, La/d;->l:I

    iput-wide v6, v5, La/d;->m:J

    const/4 v0, 0x2

    iput v0, v5, La/d;->r:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    invoke-virtual {v13, v15, v5}, Lc/D0;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_15

    :goto_11
    move-object v1, v4

    goto/16 :goto_26

    :cond_15
    :goto_12
    move-object/from16 v0, v22

    goto :goto_f

    :catchall_8
    move-exception v0

    goto :goto_13

    :catchall_9
    move-exception v0

    :goto_13
    move-object v15, v1

    move-object v14, v3

    goto/16 :goto_1

    :cond_16
    move-object/from16 v22, v0

    move v11, v14

    goto :goto_e

    .line 42
    :cond_17
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/16 v16, 0x0

    throw v16
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 43
    :cond_18
    :try_start_16
    invoke-virtual {v8}, Lg/a0;->a()J

    move-result-wide v13

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    if-eqz v11, :cond_19

    :try_start_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 47
    check-cast v11, Lc/X;

    .line 48
    iget-object v11, v11, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 49
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 50
    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_14

    .line 51
    :cond_19
    :try_start_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    if-eqz v11, :cond_1a

    :try_start_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/s1;

    .line 52
    iget-object v11, v11, Lc/s1;->c:La/x;

    .line 53
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto :goto_15

    .line 54
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_1a
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    if-eqz v11, :cond_1b

    :try_start_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/s1;

    .line 55
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1b
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto :goto_16

    :catch_1
    :goto_17
    move-object/from16 p0, v1

    goto/16 :goto_1d

    .line 56
    :cond_1b
    :try_start_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v11, 0x0

    :cond_1c
    move-wide/from16 p0, v13

    goto :goto_19

    .line 57
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v11, 0x0

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_1c
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    if-eqz v15, :cond_1c

    :try_start_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc/s1;

    .line 58
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x1

    if-ltz v11, :cond_1e

    goto :goto_18

    .line 59
    :cond_1e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    const/16 v16, 0x0

    throw v16
    :try_end_1d
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :goto_19
    int-to-long v13, v11

    const-wide/16 v21, 0x1f4

    mul-long v21, v21, v13

    const-wide/16 v13, 0x1388

    cmp-long v2, v21, v13

    if-gez v2, :cond_24

    .line 60
    :try_start_1e
    new-instance v2, La/e;

    const/4 v11, 0x0

    invoke-direct {v2, v0, v11}, La/e;-><init>(Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v5, La/d;->a:La/f;

    iput-object v12, v5, La/d;->b:Lg/a0;

    iput-object v3, v5, La/d;->c:Ljava/lang/AutoCloseable;

    iput-object v10, v5, La/d;->d:La/s;

    iput-object v9, v5, La/d;->e:Ljava/lang/Object;

    iput-object v8, v5, La/d;->f:Ljava/lang/Object;

    iput-object v0, v5, La/d;->g:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v5, La/d;->h:Ljava/lang/Object;

    iput-object v11, v5, La/d;->i:Ljava/util/Iterator;

    iput-wide v6, v5, La/d;->m:J
    :try_end_1e
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    move-wide/from16 v13, p0

    :try_start_1f
    iput-wide v13, v5, La/d;->n:J

    const/4 v11, 0x3

    iput v11, v5, La/d;->r:I
    :try_end_1f
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 61
    :try_start_20
    new-instance v11, Lkotlinx/coroutines/TimeoutCoroutine;
    :try_end_20
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    move-object/from16 p1, v0

    move-object/from16 p0, v1

    const-wide/16 v0, 0x1388

    :try_start_21
    invoke-direct {v11, v0, v1, v5}, Lkotlinx/coroutines/TimeoutCoroutine;-><init>(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    invoke-static {v11, v2}, Lkotlinx/coroutines/JobKt;->setupTimeout(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    :try_end_21
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_21 .. :try_end_21} :catch_4
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    if-ne v0, v4, :cond_1f

    goto/16 :goto_11

    :cond_1f
    move-object v11, v10

    move-wide v1, v13

    move-object/from16 v13, p0

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, p1

    .line 63
    :goto_1a
    :try_start_22
    check-cast v0, Ljava/util/List;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v14, v8, :cond_23

    .line 65
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_1b

    .line 66
    :cond_20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_21

    .line 67
    :goto_1b
    sget-object v0, Lc/f;->c:Lc/f;

    goto :goto_20

    :catchall_a
    move-exception v0

    move-object v1, v13

    goto/16 :goto_13

    .line 68
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_22
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    if-nez v0, :cond_22

    const/16 v16, 0x0

    .line 69
    :try_start_23
    throw v16
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .line 70
    :cond_22
    :try_start_24
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 71
    :cond_23
    sget-object v0, Lc/f;->a:Lc/f;
    :try_end_24
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    goto :goto_20

    :catch_2
    move-wide v0, v1

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    goto :goto_1e

    :catchall_b
    move-exception v0

    move-object/from16 p0, v1

    :goto_1c
    move-object/from16 v1, p0

    goto/16 :goto_13

    :catchall_c
    move-exception v0

    move-object/from16 p0, v1

    goto/16 :goto_13

    :catch_3
    move-wide/from16 v13, p0

    goto/16 :goto_17

    :cond_24
    move-wide/from16 v13, p0

    move-object/from16 p0, v1

    .line 72
    :try_start_25
    sget-object v0, Lc/f;->a:Lc/f;
    :try_end_25
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    move-object/from16 v1, p0

    goto :goto_1f

    :catchall_d
    move-exception v0

    goto :goto_1c

    :catch_4
    :goto_1d
    move-wide v0, v13

    move-object/from16 v13, p0

    .line 73
    :goto_1e
    :try_start_26
    sget-object v2, Lc/f;->a:Lc/f;

    move-wide/from16 v24, v0

    move-object v1, v13

    move-wide/from16 v13, v24

    :goto_1f
    move-wide/from16 v24, v13

    move-object v13, v1

    move-wide/from16 v1, v24

    move-object v11, v10

    move-object/from16 v0, v19

    move-object v10, v9

    move-object v9, v8

    .line 74
    :goto_20
    invoke-virtual {v9}, Lg/a0;->a()J

    move-result-wide v14

    .line 75
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 p0, v0

    const/16 v0, 0xa

    invoke-static {v10, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    move-object v10, v11

    move-object v11, v8

    move-wide v7, v6

    move-object/from16 v24, v12

    move-object/from16 v12, p0

    move-object/from16 v25, v9

    move-object v9, v0

    move-object/from16 v0, v24

    move-object/from16 v24, v13

    move-object v13, v3

    move-object v3, v5

    move-wide v5, v1

    move-object/from16 v2, v25

    move-object/from16 v1, v24

    :goto_21
    :try_start_27
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v4

    .line 77
    move-object/from16 v4, v19

    check-cast v4, Lc/X;

    move-object/from16 p0, v4

    .line 78
    sget-object v4, La/s;->f:La/k;

    move-object/from16 p1, v4

    sget-object v4, Lc/f;->c:Lc/f;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    if-ne v12, v4, :cond_25

    move/from16 v4, v17

    goto :goto_22

    :cond_25
    const/4 v4, 0x0

    :goto_22
    :try_start_28
    iput-object v1, v3, La/d;->a:La/f;

    iput-object v0, v3, La/d;->b:Lg/a0;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    :try_start_29
    iput-object v13, v3, La/d;->c:Ljava/lang/AutoCloseable;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    :try_start_2a
    iput-object v10, v3, La/d;->d:La/s;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    :try_start_2b
    iput-object v2, v3, La/d;->e:Ljava/lang/Object;

    iput-object v12, v3, La/d;->f:Ljava/lang/Object;

    iput-object v11, v3, La/d;->g:Ljava/lang/Object;

    iput-object v11, v3, La/d;->h:Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    :try_start_2c
    iput-object v9, v3, La/d;->i:Ljava/util/Iterator;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    :try_start_2d
    iput-wide v7, v3, La/d;->m:J

    iput-wide v5, v3, La/d;->n:J

    iput-wide v14, v3, La/d;->o:J

    move-object/from16 v19, v0

    const/4 v0, 0x4

    iput v0, v3, La/d;->r:I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    move-object/from16 v0, p0

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    :try_start_2e
    invoke-virtual {v1, v0, v4, v3}, La/k;->a(Lc/X;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_26

    goto/16 :goto_26

    :cond_26
    move-wide/from16 v22, v14

    move-object v15, v12

    move-object v12, v11

    :goto_23
    :try_start_2f
    check-cast v0, La/q;

    .line 79
    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    move-object v12, v15

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-wide/from16 v14, v22

    goto :goto_21

    :catchall_e
    move-exception v0

    goto :goto_24

    :catchall_f
    move-exception v0

    :goto_24
    move-object v14, v13

    move-object/from16 v15, v21

    goto/16 :goto_1

    :catchall_10
    move-exception v0

    move-object/from16 v21, v1

    goto :goto_24

    :catchall_11
    move-exception v0

    move-object/from16 v21, v1

    goto :goto_24

    :cond_27
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move-object v1, v4

    .line 80
    check-cast v11, Ljava/util/List;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    .line 81
    :try_start_30
    invoke-virtual {v10, v11}, La/s;->a(Ljava/util/List;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    .line 82
    :try_start_31
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    move-wide/from16 v24, v7

    move-wide v6, v5

    move-wide/from16 v4, v24

    move-object v11, v12

    move-wide v8, v14

    move-object v12, v2

    move-object v14, v13

    move-object/from16 v2, v21

    move-object v13, v10

    move-object v10, v0

    move-object/from16 v0, v19

    :goto_25
    :try_start_32
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_16

    if-eqz v15, :cond_2a

    :try_start_33
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, La/q;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_13

    .line 83
    :try_start_34
    iput-object v2, v3, La/d;->a:La/f;

    iput-object v0, v3, La/d;->b:Lg/a0;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_14

    :try_start_35
    iput-object v14, v3, La/d;->c:Ljava/lang/AutoCloseable;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_13

    :try_start_36
    iput-object v13, v3, La/d;->d:La/s;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_14

    :try_start_37
    iput-object v12, v3, La/d;->e:Ljava/lang/Object;

    iput-object v11, v3, La/d;->f:Ljava/lang/Object;

    iput-object v10, v3, La/d;->g:Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v0, 0x0

    iput-object v0, v3, La/d;->h:Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_13

    :try_start_38
    iput-object v0, v3, La/d;->i:Ljava/util/Iterator;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_14

    :try_start_39
    iput-wide v4, v3, La/d;->m:J

    iput-wide v6, v3, La/d;->n:J

    iput-wide v8, v3, La/d;->o:J

    const/4 v0, 0x5

    iput v0, v3, La/d;->r:I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_13

    :try_start_3a
    invoke-virtual {v13, v15, v3}, La/s;->a(La/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v15
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_14

    if-ne v15, v1, :cond_28

    :goto_26
    return-object v1

    :cond_28
    :goto_27
    :try_start_3b
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_29

    .line 84
    new-instance v0, La/a;

    invoke-direct {v0}, La/a;-><init>()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_13

    const/4 v11, 0x0

    :try_start_3c
    invoke-static {v14, v11}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_5
    .catchall {:try_start_3c .. :try_end_3c} :catchall_12

    .line 85
    iget-object v1, v2, La/f;->a:Ljava/lang/Object;

    check-cast v1, Lc/h;

    .line 86
    iget v2, v1, Lc/h;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lc/h;->f:I

    return-object v0

    :catchall_12
    move-exception v0

    move-object v15, v2

    goto/16 :goto_2c

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_2a

    :catchall_13
    move-exception v0

    goto :goto_28

    :cond_29
    move-object/from16 v0, v17

    goto :goto_25

    :catchall_14
    move-exception v0

    :goto_28
    move-object v15, v2

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v17, v0

    .line 87
    :try_start_3d
    invoke-virtual {v13}, La/s;->a()V

    move-object v0, v11

    .line 88
    invoke-virtual {v12}, Lg/a0;->a()J

    move-result-wide v10
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_17

    .line 89
    :try_start_3e
    new-instance v3, Lc/g;

    invoke-virtual {v12}, Lg/a0;->b()J

    move-result-wide v12

    invoke-virtual/range {v17 .. v17}, Lg/a0;->b()J

    move-result-wide v17
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_16

    move-object v1, v14

    move-wide/from16 v14, v17

    :try_start_3f
    invoke-direct/range {v3 .. v15}, Lc/g;-><init>(JJJJJJ)V

    .line 90
    new-instance v4, La/b;

    invoke-direct {v4, v0, v3}, La/b;-><init>(Lc/f;Lc/g;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_15

    const/4 v11, 0x0

    :try_start_40
    invoke-static {v1, v11}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_5
    .catchall {:try_start_40 .. :try_end_40} :catchall_12

    .line 91
    iget-object v0, v2, La/f;->a:Ljava/lang/Object;

    check-cast v0, Lc/h;

    .line 92
    iget v1, v0, Lc/h;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lc/h;->f:I

    return-object v4

    :catchall_15
    move-exception v0

    move-object v14, v1

    goto :goto_28

    :catchall_16
    move-exception v0

    move-object v1, v14

    goto :goto_28

    :catchall_17
    move-exception v0

    move-object v1, v14

    goto :goto_28

    :catchall_18
    move-exception v0

    move-object/from16 v3, p1

    goto/16 :goto_13

    .line 93
    :goto_29
    :try_start_41
    throw v1
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_19

    :catchall_19
    move-exception v0

    :try_start_42
    invoke-static {v14, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_6
    .catchall {:try_start_42 .. :try_end_42} :catchall_1a

    :catchall_1a
    move-exception v0

    goto :goto_2c

    :catch_6
    move-exception v0

    goto :goto_2b

    :catchall_1b
    move-exception v0

    move-object v15, v1

    goto :goto_2c

    :catch_7
    move-exception v0

    :goto_2a
    move-object v15, v1

    .line 94
    :goto_2b
    :try_start_43
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2b

    .line 95
    new-instance v1, La/a;

    invoke-direct {v1, v0}, La/a;-><init>(Ljava/lang/Exception;)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1a

    .line 96
    iget-object v0, v15, La/f;->a:Ljava/lang/Object;

    check-cast v0, Lc/h;

    .line 97
    iget v2, v0, Lc/h;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lc/h;->f:I

    return-object v1

    .line 98
    :cond_2b
    :try_start_44
    throw v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1a

    .line 99
    :goto_2c
    iget-object v1, v15, La/f;->a:Ljava/lang/Object;

    check-cast v1, Lc/h;

    .line 100
    iget v2, v1, Lc/h;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lc/h;->f:I

    .line 101
    throw v0
.end method

.method public a(Landroid/graphics/Paint;)V
    .locals 0

    .line 102
    return-void
.end method

.method public a([B)V
    .locals 1

    if-eqz p1, :cond_1

    .line 110
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, La/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, La/f;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method

.method public a(I)[B
    .locals 4

    .line 103
    iget-object v0, p0, La/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, La/f;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [B

    .line 105
    array-length v3, v2

    if-ne v3, p1, :cond_0

    .line 106
    iget-object p0, p0, La/f;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 107
    :goto_0
    monitor-exit v0

    if-nez v2, :cond_2

    .line 108
    new-array p0, p1, [B

    return-object p0

    :cond_2
    return-object v2

    .line 109
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public cubicTo(FFFFFF)V
    .locals 7

    iget-object p0, p0, La/f;->a:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/Path;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void
.end method

.method public invoke-0d7_KjU()J
    .locals 6

    iget v0, p0, La/f;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, La/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/RippleNodeFactory;

    iget-wide v0, p0, Landroidx/compose/material/RippleNodeFactory;->color:J

    return-wide v0

    :pswitch_0
    iget-object p0, p0, La/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    iget-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/material/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/RippleConfiguration;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Landroidx/compose/material/RippleConfiguration;->color:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/material/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->value:J

    sget-object v2, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, v2}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/Colors;

    invoke-virtual {p0}, Landroidx/compose/material/Colors;->isLight()Z

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->luminance-8_81llA(J)F

    move-result v2

    if-nez p0, :cond_2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v2, v4

    if-gez p0, :cond_2

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    :cond_2
    :goto_0
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public lineTo(FF)V
    .locals 0

    iget-object p0, p0, La/f;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Path;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 0

    iget-object p0, p0, La/f;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Path;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method
