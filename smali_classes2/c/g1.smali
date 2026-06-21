.class public final Lc/g1;
.super Lc/M0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;Ljava/util/List;Lc/G;)V
    .locals 0

    iput-object p1, p0, Lc/g1;->f:Lc/s1;

    invoke-direct {p0, p1, p2, p3}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lc/f1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lc/f1;

    iget v3, v2, Lc/f1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lc/f1;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lc/f1;

    invoke-direct {v2, v0, v1}, Lc/f1;-><init>(Lc/g1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lc/f1;->e:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v4, v2, Lc/f1;->g:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lc/f1;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v3, v2, Lc/f1;->b:Ljava/lang/Object;

    check-cast v3, Lc/N0;

    iget-object v2, v2, Lc/f1;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v2, Lc/f1;->d:Z

    iget-object v4, v2, Lc/f1;->c:Ljava/lang/Object;

    check-cast v4, Lc/s1;

    iget-object v6, v2, Lc/f1;->b:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lc/f1;->a:Ljava/lang/Object;

    check-cast v7, Lc/g1;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_3

    :cond_3
    iget-boolean v0, v2, Lc/f1;->d:Z

    iget-object v4, v2, Lc/f1;->c:Ljava/lang/Object;

    check-cast v4, Lc/s1;

    iget-object v7, v2, Lc/f1;->b:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v2, Lc/f1;->a:Ljava/lang/Object;

    check-cast v10, Lc/g1;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v10

    move-object v10, v7

    move-object/from16 v7, v16

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v7

    goto/16 :goto_7

    :cond_4
    iget-boolean v0, v2, Lc/f1;->d:Z

    iget-object v4, v2, Lc/f1;->c:Ljava/lang/Object;

    check-cast v4, Lc/s1;

    iget-object v10, v2, Lc/f1;->b:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/sync/Mutex;

    iget-object v11, v2, Lc/f1;->a:Ljava/lang/Object;

    check-cast v11, Lc/g1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v10

    move v10, v0

    move-object v0, v11

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    iput-object v0, v2, Lc/f1;->a:Ljava/lang/Object;

    iget-object v1, v0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v1, v2, Lc/f1;->b:Ljava/lang/Object;

    iget-object v4, v0, Lc/g1;->f:Lc/s1;

    iput-object v4, v2, Lc/f1;->c:Ljava/lang/Object;

    move/from16 v10, p1

    iput-boolean v10, v2, Lc/f1;->d:Z

    iput v8, v2, Lc/f1;->g:I

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_6

    goto/16 :goto_4

    .line 6
    :cond_6
    :goto_1
    :try_start_3
    iput-object v0, v2, Lc/f1;->a:Ljava/lang/Object;

    iput-object v1, v2, Lc/f1;->b:Ljava/lang/Object;

    iput-object v4, v2, Lc/f1;->c:Ljava/lang/Object;

    iput-boolean v10, v2, Lc/f1;->d:Z

    iput v7, v2, Lc/f1;->g:I

    invoke-static {v0, v2}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-ne v7, v3, :cond_7

    goto/16 :goto_4

    :cond_7
    move-object/from16 v16, v7

    move-object v7, v0

    move v0, v10

    move-object v10, v1

    move-object/from16 v1, v16

    :goto_2
    :try_start_4
    check-cast v1, Lc/N0;

    .line 7
    iget-object v1, v4, Lc/s1;->C:Lc/r0;

    .line 8
    iput-object v7, v2, Lc/f1;->a:Ljava/lang/Object;

    iput-object v10, v2, Lc/f1;->b:Ljava/lang/Object;

    iput-object v4, v2, Lc/f1;->c:Ljava/lang/Object;

    iput-boolean v0, v2, Lc/f1;->d:Z

    iput v6, v2, Lc/f1;->g:I

    .line 9
    invoke-virtual {v1, v8, v2}, Lc/r0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v1, v3, :cond_8

    goto/16 :goto_4

    :cond_8
    move-object v6, v10

    .line 10
    :goto_3
    :try_start_5
    check-cast v1, Lc/N0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_9

    .line 11
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v9

    .line 12
    :cond_9
    :try_start_6
    iget-object v10, v1, Lc/N0;->b:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x44000000    # 512.0f

    div-float/2addr v12, v11

    .line 14
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 15
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v12, v13

    .line 16
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const-string v12, "createBitmap(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v4, v15, v15, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v13, v15, v15, v14, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 21
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v12, v4, v13, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 22
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v10, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 23
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, v1, Lc/N0;->a:Lc/P0;

    .line 25
    iput-object v6, v2, Lc/f1;->a:Ljava/lang/Object;

    iput-object v1, v2, Lc/f1;->b:Ljava/lang/Object;

    iput-object v11, v2, Lc/f1;->c:Ljava/lang/Object;

    iput v5, v2, Lc/f1;->g:I

    const/4 v4, 0x1

    .line 26
    invoke-virtual {v7, v0, v11, v4, v2}, Lc/M0;->a(Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v0, v3, :cond_a

    :goto_4
    return-object v3

    :cond_a
    move-object v3, v1

    move-object v2, v6

    move-object v0, v11

    :goto_5
    move-object v11, v0

    move-object v1, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v6

    goto :goto_7

    :cond_b
    move-object v2, v6

    .line 27
    :goto_6
    :try_start_7
    new-instance v0, Lc/N0;

    .line 28
    iget-object v1, v1, Lc/N0;->a:Lc/P0;

    .line 29
    invoke-direct {v0, v1, v11}, Lc/N0;-><init>(Lc/P0;Landroid/graphics/Bitmap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 30
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_3
    move-exception v0

    move-object v2, v10

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v1

    :goto_7
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
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
