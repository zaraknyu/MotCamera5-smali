.class public final Lc/D0;
.super Lc/M0;
.source "SourceFile"


# instance fields
.field public f:Z

.field public final synthetic g:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;)V
    .locals 2

    iput-object p1, p0, Lc/D0;->g:Lc/s1;

    iget-object v0, p1, Lc/s1;->M:Lc/d0;

    iget-object v1, p1, Lc/s1;->N:Lc/u0;

    filled-new-array {v0, v1}, [Lc/M0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lc/s1;->n:Lc/G;

    invoke-direct {p0, p1, v0, v1}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/D0;->f:Z

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lc/C0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lc/C0;

    iget v3, v2, Lc/C0;->l:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lc/C0;->l:I

    goto :goto_0

    :cond_0
    new-instance v2, Lc/C0;

    invoke-direct {v2, v0, v1}, Lc/C0;-><init>(Lc/D0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lc/C0;->j:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v4, v2, Lc/C0;->l:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lc/C0;->e:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v3, v2, Lc/C0;->d:Ljava/lang/Object;

    check-cast v3, Lc/P0;

    iget-object v4, v2, Lc/C0;->c:Ljava/lang/Object;

    check-cast v4, Lg/a0;

    iget-object v5, v2, Lc/C0;->b:Ljava/lang/Object;

    check-cast v5, Lg/a0;

    iget-object v2, v2, Lc/C0;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v2, Lc/C0;->h:J

    iget-wide v8, v2, Lc/C0;->g:J

    iget-object v0, v2, Lc/C0;->f:Landroid/graphics/Bitmap;

    iget-object v4, v2, Lc/C0;->e:Ljava/lang/Object;

    check-cast v4, Lc/P0;

    iget-object v11, v2, Lc/C0;->d:Ljava/lang/Object;

    check-cast v11, Lg/a0;

    iget-object v12, v2, Lc/C0;->c:Ljava/lang/Object;

    check-cast v12, Lg/a0;

    iget-object v13, v2, Lc/C0;->b:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/sync/Mutex;

    iget-object v14, v2, Lc/C0;->a:Ljava/lang/Object;

    check-cast v14, Lc/D0;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v11

    move-object v11, v4

    move-object v4, v5

    move-object v5, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v11, v10

    goto/16 :goto_b

    :cond_3
    iget-wide v7, v2, Lc/C0;->g:J

    iget-object v0, v2, Lc/C0;->e:Ljava/lang/Object;

    check-cast v0, Lg/a0;

    iget-object v4, v2, Lc/C0;->d:Ljava/lang/Object;

    check-cast v4, Lg/a0;

    iget-object v9, v2, Lc/C0;->c:Ljava/lang/Object;

    check-cast v9, Lc/s1;

    iget-object v11, v2, Lc/C0;->b:Ljava/lang/Object;

    move-object v13, v11

    check-cast v13, Lkotlinx/coroutines/sync/Mutex;

    iget-object v11, v2, Lc/C0;->a:Ljava/lang/Object;

    check-cast v11, Lc/D0;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v14, v11

    move-object v11, v0

    move-object v0, v9

    move-wide v8, v7

    :goto_1
    move-object v12, v4

    goto/16 :goto_4

    :cond_4
    iget-wide v11, v2, Lc/C0;->g:J

    iget-object v0, v2, Lc/C0;->e:Ljava/lang/Object;

    check-cast v0, Lg/a0;

    iget-object v4, v2, Lc/C0;->d:Ljava/lang/Object;

    check-cast v4, Lg/a0;

    iget-object v8, v2, Lc/C0;->c:Ljava/lang/Object;

    check-cast v8, Lc/s1;

    iget-object v13, v2, Lc/C0;->b:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/sync/Mutex;

    iget-object v14, v2, Lc/C0;->a:Ljava/lang/Object;

    check-cast v14, Lc/D0;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_5
    iget-object v0, v2, Lc/C0;->c:Ljava/lang/Object;

    check-cast v0, Lc/s1;

    iget-object v4, v2, Lc/C0;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v11, v2, Lc/C0;->a:Ljava/lang/Object;

    check-cast v11, Lc/D0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iput-object v0, v2, Lc/C0;->a:Ljava/lang/Object;

    iget-object v1, v0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v1, v2, Lc/C0;->b:Ljava/lang/Object;

    iget-object v4, v0, Lc/D0;->g:Lc/s1;

    iput-object v4, v2, Lc/C0;->c:Ljava/lang/Object;

    iput v9, v2, Lc/C0;->l:I

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_7

    goto/16 :goto_8

    :cond_7
    move-object v13, v1

    .line 3
    :goto_2
    :try_start_4
    new-instance v1, Lg/a0;

    invoke-direct {v1}, Lg/a0;-><init>()V

    .line 4
    new-instance v11, Lg/a0;

    invoke-direct {v11}, Lg/a0;-><init>()V

    .line 5
    invoke-virtual {v11}, Lg/a0;->a()J

    move-result-wide v14

    .line 6
    iput-object v0, v2, Lc/C0;->a:Ljava/lang/Object;

    iput-object v13, v2, Lc/C0;->b:Ljava/lang/Object;

    iput-object v4, v2, Lc/C0;->c:Ljava/lang/Object;

    iput-object v1, v2, Lc/C0;->d:Ljava/lang/Object;

    iput-object v11, v2, Lc/C0;->e:Ljava/lang/Object;

    iput-wide v14, v2, Lc/C0;->g:J

    iput v8, v2, Lc/C0;->l:I

    invoke-static {v0, v2}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_8

    goto/16 :goto_8

    :cond_8
    move-wide/from16 v21, v14

    move-object v14, v0

    move-object v0, v11

    move-wide/from16 v11, v21

    move-object/from16 v21, v4

    move-object v4, v1

    move-object v1, v8

    move-object/from16 v8, v21

    :goto_3
    check-cast v1, Lc/N0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_9

    .line 7
    invoke-interface {v13, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v1

    .line 8
    :cond_9
    :try_start_5
    iget-object v1, v8, Lc/s1;->M:Lc/d0;

    .line 9
    iput-object v14, v2, Lc/C0;->a:Ljava/lang/Object;

    iput-object v13, v2, Lc/C0;->b:Ljava/lang/Object;

    iput-object v8, v2, Lc/C0;->c:Ljava/lang/Object;

    iput-object v4, v2, Lc/C0;->d:Ljava/lang/Object;

    iput-object v0, v2, Lc/C0;->e:Ljava/lang/Object;

    iput-wide v11, v2, Lc/C0;->g:J

    iput v7, v2, Lc/C0;->l:I

    .line 10
    invoke-virtual {v1, v9, v2}, Lc/d0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    goto/16 :goto_8

    :cond_a
    move-wide/from16 v21, v11

    move-object v11, v0

    move-object v0, v8

    move-wide/from16 v8, v21

    goto/16 :goto_1

    .line 11
    :goto_4
    check-cast v1, Lc/N0;

    if-eqz v1, :cond_f

    .line 12
    iget-object v4, v1, Lc/N0;->a:Lc/P0;

    .line 13
    iget-object v7, v1, Lc/N0;->b:Landroid/graphics/Bitmap;

    .line 14
    invoke-virtual {v11}, Lg/a0;->a()J

    move-result-wide v5

    .line 15
    invoke-virtual {v0}, Lc/s1;->u()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 16
    iget-object v0, v0, Lc/s1;->N:Lc/u0;

    .line 17
    iput-object v14, v2, Lc/C0;->a:Ljava/lang/Object;

    iput-object v13, v2, Lc/C0;->b:Ljava/lang/Object;

    iput-object v12, v2, Lc/C0;->c:Ljava/lang/Object;

    iput-object v11, v2, Lc/C0;->d:Ljava/lang/Object;

    iput-object v4, v2, Lc/C0;->e:Ljava/lang/Object;

    iput-object v7, v2, Lc/C0;->f:Landroid/graphics/Bitmap;

    iput-wide v8, v2, Lc/C0;->g:J

    iput-wide v5, v2, Lc/C0;->h:J

    const/4 v15, 0x4

    iput v15, v2, Lc/C0;->l:I

    invoke-virtual {v0, v1, v2}, Lc/u0;->a(Lc/N0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v1, v3, :cond_b

    goto/16 :goto_8

    :cond_b
    move-object v0, v11

    move-object v11, v4

    move-object v4, v0

    move-object v0, v7

    move-wide v6, v5

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object v5, v12

    :goto_5
    :try_start_6
    check-cast v1, Lc/N0;

    if-eqz v1, :cond_c

    .line 18
    iget-object v12, v1, Lc/N0;->b:Landroid/graphics/Bitmap;

    .line 19
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 21
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v10, 0x0

    .line 22
    invoke-virtual {v13, v12, v10, v10, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 23
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    iget-object v1, v1, Lc/N0;->a:Lc/P0;

    .line 25
    iget-wide v12, v1, Lc/P0;->e:J

    const/16 v18, 0xf

    move-wide/from16 v16, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 26
    invoke-static/range {v11 .. v18}, Lc/P0;->a(Lc/P0;Lc/a;IIIJI)Lc/P0;

    move-result-object v1

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v13, v19

    goto :goto_6

    .line 27
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Couldn\'t create eraser layer bitmap"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    const/4 v11, 0x0

    goto :goto_b

    :cond_d
    move-object v1, v4

    move-object v0, v7

    move-object v4, v11

    move-wide v6, v5

    move-object v5, v12

    .line 28
    :goto_7
    :try_start_7
    invoke-virtual {v4}, Lg/a0;->a()J

    .line 29
    iget-boolean v10, v14, Lc/D0;->f:Z

    iput-object v13, v2, Lc/C0;->a:Ljava/lang/Object;

    iput-object v5, v2, Lc/C0;->b:Ljava/lang/Object;

    iput-object v4, v2, Lc/C0;->c:Ljava/lang/Object;

    iput-object v1, v2, Lc/C0;->d:Ljava/lang/Object;

    iput-object v0, v2, Lc/C0;->e:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v2, Lc/C0;->f:Landroid/graphics/Bitmap;

    iput-wide v8, v2, Lc/C0;->g:J

    iput-wide v6, v2, Lc/C0;->h:J

    const/4 v6, 0x5

    iput v6, v2, Lc/C0;->l:I

    invoke-virtual {v14, v1, v0, v10, v2}, Lc/M0;->a(Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v2, v3, :cond_e

    :goto_8
    return-object v3

    :cond_e
    move-object v3, v1

    move-object v2, v13

    .line 30
    :goto_9
    :try_start_8
    invoke-virtual {v4}, Lg/a0;->b()J

    invoke-virtual {v5}, Lg/a0;->b()J

    .line 31
    new-instance v1, Lc/N0;

    invoke-direct {v1, v3, v0}, Lc/N0;-><init>(Lc/P0;Landroid/graphics/Bitmap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v11, 0x0

    .line 32
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v1

    :goto_a
    move-object v13, v2

    goto :goto_6

    .line 33
    :cond_f
    :try_start_9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Couldn\'t create processed bitmap"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 34
    :goto_b
    invoke-interface {v13, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lc/P0;Lc/P0;)Z
    .locals 0

    const-string p0, "fromState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "toState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p2}, Lc/P0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 36
    iget-object p0, p1, Lc/P0;->a:Lc/a;

    .line 37
    invoke-virtual {p0}, Lc/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    .line 38
    iget p0, p1, Lc/P0;->b:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lc/B0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/B0;

    iget v1, v0, Lc/B0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/B0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/B0;

    invoke-direct {v0, p0, p2}, Lc/B0;-><init>(Lc/D0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lc/B0;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lc/B0;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc/B0;->a:Lc/D0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lc/D0;->f:Z

    iput-object p0, v0, Lc/B0;->a:Lc/D0;

    iput v3, v0, Lc/B0;->d:I

    invoke-virtual {p0, v0}, Lc/M0;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p0, p0, Lc/M0;->a:Lc/G;

    return-object p0
.end method
