.class public final Lb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/f;


# static fields
.field public static final c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

.field public static final d:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

.field public static final e:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

.field public static final f:Ljava/util/List;

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I


# instance fields
.field public final b:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v2, Lb/o;->c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v2, Lb/o;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lb/o;->e:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    const-string v0, "dc"

    const-string v1, "bbd"

    const-string v2, "bd"

    const-string v3, "sr"

    const-string v4, "dd"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/o;->f:Ljava/util/List;

    const/4 v0, 0x6

    sput v0, Lb/o;->g:I

    const/4 v0, 0x2

    sput v0, Lb/o;->h:I

    const/4 v0, 0x4

    sput v0, Lb/o;->i:I

    const/16 v0, 0x8

    sput v0, Lb/o;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/o$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lb/o;->b:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static a(I[B)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ltz p0, :cond_1

    .line 25
    array-length v1, p1

    if-ge p0, v1, :cond_1

    aget-byte v1, p1, p0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p0, p0, 0x1

    if-ltz p0, :cond_2

    array-length v2, p1

    if-ge p0, v2, :cond_2

    aget-byte v0, p1, p0

    :cond_2
    and-int/lit16 p0, v0, 0xff

    add-int/2addr v1, p0

    return v1
.end method

.method public static a(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;[Lcom/adobe/magic_clean/CCornersInfo;)Ljava/lang/String;
    .locals 10

    .line 26
    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mMLAnalyticsOutput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;

    iget-boolean v1, v0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->isValid:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->mBufferForKeys:[[B

    const-string v1, "mBufferForKeys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 27
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mMLAnalyticsOutput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;

    iget-object v1, v1, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->mBufferForKeys:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 29
    invoke-static {v2, v1}, Lb/o;->a(I[B)I

    move-result v3

    const/4 v4, 0x4

    .line 30
    invoke-static {v4, v1}, Lb/o;->a(I[B)I

    move-result v1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    .line 31
    iget-object p0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mMLAnalyticsOutput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;

    iget-object p0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->mBufferForKeys:[[B

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 32
    array-length v5, v4

    if-le v1, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    .line 33
    :goto_1
    invoke-virtual {v0, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sub-int/2addr v1, v5

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    .line 34
    new-array v1, p0, [I

    .line 35
    array-length v4, p1

    if-nez v4, :cond_3

    goto :goto_3

    .line 36
    :cond_3
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p1

    .line 37
    array-length v4, p1

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_4

    mul-int/lit8 v6, v5, 0x2

    .line 38
    aget-object v7, p1, v5

    iget v8, v7, Landroid/graphics/PointF;->x:F

    const/16 v9, 0x100

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    aput v8, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 39
    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v2, p0, :cond_5

    .line 40
    aget p1, v1, v2

    shr-int/lit8 v4, p1, 0x8

    .line 41
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 42
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 43
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILb/c;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    instance-of v4, v3, Lb/k;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lb/k;

    iget v5, v4, Lb/k;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lb/k;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Lb/k;

    invoke-direct {v4, v0, v3}, Lb/k;-><init>(Lb/o;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v3, v4, Lb/k;->c:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 74
    iget v6, v4, Lb/k;->e:I

    const-string v7, "MagicCleanEdgeDetection"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v0, v4, Lb/k;->b:Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;

    iget-object v1, v4, Lb/k;->a:Lg/a0;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    new-instance v3, Lg/a0;

    invoke-direct {v3}, Lg/a0;-><init>()V

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    move/from16 v16, v8

    goto :goto_1

    :cond_3
    move/from16 v16, v6

    :goto_1
    if-eqz v2, :cond_4

    .line 76
    :try_start_1
    iget-boolean v10, v2, Lb/c;->a:Z

    move v14, v10

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_e

    :cond_4
    move v14, v6

    :goto_2
    if-eqz v2, :cond_5

    .line 77
    iget v10, v2, Lb/c;->b:I

    move v15, v10

    goto :goto_3

    :cond_5
    move v15, v6

    :goto_3
    if-eqz v2, :cond_6

    .line 78
    iget-object v2, v2, Lb/c;->c:Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;

    goto :goto_4

    :cond_6
    move-object v2, v9

    :goto_4
    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, v9

    :goto_5
    if-nez v2, :cond_8

    .line 79
    new-instance v2, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;

    invoke-direct {v2}, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;-><init>()V

    :cond_8
    move-object/from16 v17, v2

    .line 80
    new-instance v10, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;

    if-eq v1, v8, :cond_c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    :goto_6
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move v13, v6

    goto :goto_8

    .line 81
    :cond_9
    sget v1, Lb/o;->j:I

    :goto_7
    move v6, v1

    goto :goto_6

    .line 82
    :cond_a
    sget v1, Lb/o;->g:I

    goto :goto_7

    .line 83
    :cond_b
    sget v1, Lb/o;->i:I

    goto :goto_7

    .line 84
    :cond_c
    sget v1, Lb/o;->h:I

    goto :goto_7

    .line 85
    :goto_8
    invoke-direct/range {v10 .. v17}, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZIZLcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;)V

    .line 86
    new-instance v1, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;

    invoke-direct {v1}, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;-><init>()V

    .line 87
    sget-object v2, Lb/o;->e:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v6, Lb/l;

    invoke-direct {v6, v0, v10, v1, v9}, Lb/l;-><init>(Lb/o;Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;Lkotlin/coroutines/Continuation;)V

    iput-object v3, v4, Lb/k;->a:Lg/a0;

    iput-object v1, v4, Lb/k;->b:Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;

    iput v8, v4, Lb/k;->e:I

    invoke-static {v2, v6, v4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v0, v5, :cond_d

    return-object v5

    :cond_d
    move-object/from16 v18, v3

    move-object v3, v0

    move-object v0, v1

    move-object/from16 v1, v18

    .line 88
    :goto_9
    :try_start_2
    check-cast v3, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    .line 89
    iget-object v9, v0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;->mOutputImage:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    :goto_a
    move-object v3, v1

    goto :goto_c

    :goto_b
    move-object v3, v1

    goto :goto_e

    .line 90
    :goto_c
    invoke-static {v0, v7}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    :goto_d
    move-object v1, v3

    goto :goto_f

    .line 91
    :goto_e
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e

    .line 92
    const-string v1, "Exception has been caught"

    .line 93
    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 94
    :goto_f
    new-instance v0, Lb/e;

    invoke-virtual {v1}, Lg/a0;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v9}, Lb/e;-><init>(JLandroid/graphics/Bitmap;)V

    return-object v0

    .line 95
    :cond_e
    throw v0
.end method

.method public final a(Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lb/i;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lb/i;

    iget v1, v0, Lb/i;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lb/i;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lb/i;

    invoke-direct {v0, p0, p2}, Lb/i;-><init>(Lb/o;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lb/i;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 5
    iget v2, v0, Lb/i;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lb/i;->c:Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;

    iget-object p1, v0, Lb/i;->b:Lg/a0;

    iget-object v0, v0, Lb/i;->a:Lb/o;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    :try_start_1
    new-instance p2, Lg/a0;

    invoke-direct {p2}, Lg/a0;-><init>()V

    .line 7
    new-instance v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;

    invoke-direct {v2, p1}, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    new-instance p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;

    invoke-direct {p1}, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;-><init>()V

    .line 9
    iget-object v5, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mMLAnalyticsInput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;

    iput-boolean v4, v5, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;->mCalculateMLAnalyticsforBD:Z

    const/16 v6, 0xe1

    .line 10
    iput v6, v5, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;->mMaxSizeOfEachBuffer:I

    const/4 v6, 0x5

    .line 11
    iput v6, v5, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;->mNumberOfBuffersForBDAnalytics:I

    const/4 v5, 0x0

    .line 12
    iput-boolean v5, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mEnableBetaFeatures:Z

    .line 13
    sget-object v5, Lb/o;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v6, Lb/j;

    invoke-direct {v6, p0, v2, p1, v3}, Lb/j;-><init>(Lb/o;Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lb/i;->a:Lb/o;

    iput-object p2, v0, Lb/i;->b:Lg/a0;

    iput-object p1, v0, Lb/i;->c:Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;

    iput v4, v0, Lb/i;->f:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v7, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, p2

    move-object p2, v7

    .line 14
    :goto_1
    check-cast p2, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    .line 15
    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    if-eq p2, v1, :cond_4

    .line 16
    new-instance p2, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {p2}, Lcom/adobe/magic_clean/CCornersInfo;-><init>()V

    filled-new-array {p2}, [Lcom/adobe/magic_clean/CCornersInfo;

    move-result-object p2

    goto :goto_2

    .line 17
    :cond_4
    iget-object p2, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

    if-eqz p2, :cond_5

    array-length v1, p2

    if-nez v1, :cond_6

    .line 18
    :cond_5
    new-instance p2, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {p2}, Lcom/adobe/magic_clean/CCornersInfo;-><init>()V

    filled-new-array {p2}, [Lcom/adobe/magic_clean/CCornersInfo;

    move-result-object p2

    .line 19
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lb/o;->a(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;[Lcom/adobe/magic_clean/CCornersInfo;)Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance v0, Lb/d;

    .line 21
    invoke-virtual {p1}, Lg/a0;->a()J

    move-result-wide v1

    .line 22
    invoke-direct {v0, p2, p0, v1, v2}, Lb/d;-><init>([Lcom/adobe/magic_clean/CCornersInfo;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 23
    :goto_3
    const-string p1, "MagicCleanEdgeDetection"

    invoke-static {p0, p1}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    .line 24
    new-instance p0, Lb/d;

    new-instance p1, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {p1}, Lcom/adobe/magic_clean/CCornersInfo;-><init>()V

    filled-new-array {p1}, [Lcom/adobe/magic_clean/CCornersInfo;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v3, v0, v1}, Lb/d;-><init>([Lcom/adobe/magic_clean/CCornersInfo;Ljava/lang/String;J)V

    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;IZLjava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string v5, "CameraCleanAndroidShim.CropAndClean failed: "

    instance-of v6, v4, Lb/g;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lb/g;

    iget v7, v6, Lb/g;->g:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lb/g;->g:I

    goto :goto_0

    :cond_0
    new-instance v6, Lb/g;

    invoke-direct {v6, v0, v4}, Lb/g;-><init>(Lb/o;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v4, v6, Lb/g;->e:Ljava/lang/Object;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    iget v8, v6, Lb/g;->g:I

    const-string v9, "MagicCleanEdgeDetection"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v8, :cond_2

    if-ne v8, v10, :cond_1

    iget-object v0, v6, Lb/g;->d:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;

    iget-object v1, v6, Lb/g;->c:Lg/a0;

    iget-object v2, v6, Lb/g;->b:Ljava/lang/Object;

    iget-object v3, v6, Lb/g;->a:Landroid/graphics/Bitmap;

    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v15

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :goto_1
    move v3, v11

    move-object v2, v12

    move-object v6, v2

    goto/16 :goto_10

    :catch_1
    move-exception v0

    :goto_2
    move v3, v11

    move-object v2, v12

    move-object v6, v2

    goto/16 :goto_12

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    new-instance v4, Lg/a0;

    invoke-direct {v4}, Lg/a0;-><init>()V

    .line 46
    :try_start_1
    new-instance v8, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;

    if-eq v2, v10, :cond_6

    const/4 v13, 0x2

    if-eq v2, v13, :cond_5

    const/4 v13, 0x3

    if-eq v2, v13, :cond_4

    const/4 v13, 0x4

    if-eq v2, v13, :cond_3

    move v2, v11

    :goto_3
    move-object/from16 v13, p2

    goto :goto_4

    .line 47
    :cond_3
    sget v2, Lb/o;->j:I

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    goto/16 :goto_f

    .line 48
    :cond_4
    sget v2, Lb/o;->g:I

    goto :goto_3

    .line 49
    :cond_5
    sget v2, Lb/o;->i:I

    goto :goto_3

    .line 50
    :cond_6
    sget v2, Lb/o;->h:I

    goto :goto_3

    .line 51
    :goto_4
    invoke-direct {v8, v1, v13, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;-><init>(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;I)V

    .line 52
    instance-of v2, v3, Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

    if-eqz v2, :cond_7

    .line 53
    move-object v2, v3

    check-cast v2, Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

    iput-object v2, v8, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mCleaningMasks:Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

    .line 54
    :cond_7
    new-instance v2, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;

    invoke-direct {v2}, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;-><init>()V

    if-eqz p4, :cond_8

    .line 55
    sget-object v13, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->kCropAndCleanModeDefault:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    iput-object v13, v8, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mCropAndCleanMode:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    goto :goto_5

    .line 56
    :cond_8
    sget-object v13, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->kCropAndCleanModeOverride:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    iput-object v13, v8, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mCropAndCleanMode:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    .line 57
    :goto_5
    iput-boolean v11, v8, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mEnableBetaFeatures:Z

    .line 58
    sget-object v13, Lb/o;->c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v14, Lb/h;

    invoke-direct {v14, v0, v8, v2, v12}, Lb/h;-><init>(Lb/o;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v6, Lb/g;->a:Landroid/graphics/Bitmap;

    iput-object v3, v6, Lb/g;->b:Ljava/lang/Object;

    iput-object v4, v6, Lb/g;->c:Lg/a0;

    iput-object v2, v6, Lb/g;->d:Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;

    iput v10, v6, Lb/g;->g:I

    invoke-static {v13, v14, v6}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v0, v7, :cond_9

    return-object v7

    :cond_9
    move-object v15, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v15

    .line 59
    :goto_6
    :try_start_2
    check-cast v3, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    .line 60
    iget-object v6, v0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_a

    if-nez v6, :cond_b

    .line 61
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_a

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_d

    :cond_a
    :goto_7
    invoke-virtual {v1, v3, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_8

    .line 63
    :cond_b
    invoke-virtual {v6, v11, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_c

    .line 64
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    :cond_c
    :goto_8
    iget-boolean v1, v0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mIsTintRemoved:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    .line 66
    :try_start_4
    iget v11, v0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mDocumentColorType:I

    if-nez v2, :cond_d

    .line 67
    iget-object v2, v0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mCleaningMasks:Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v2, v12

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v2, v12

    goto :goto_b

    .line 68
    :cond_d
    :goto_9
    :try_start_5
    iget-object v12, v0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mTintPixel:Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_13

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_b

    :goto_a
    move v3, v1

    move-object v1, v4

    goto :goto_10

    :goto_b
    move v3, v1

    move-object v1, v4

    goto :goto_12

    :catch_a
    move-exception v0

    move-object v6, v12

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v6, v12

    goto :goto_d

    :goto_c
    move-object v1, v4

    move v3, v11

    move-object v2, v12

    goto :goto_10

    :goto_d
    move-object v1, v4

    move v3, v11

    move-object v2, v12

    goto :goto_12

    :goto_e
    move-object v1, v4

    goto/16 :goto_1

    :goto_f
    move-object v1, v4

    goto/16 :goto_2

    .line 69
    :goto_10
    invoke-static {v0, v9}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    :goto_11
    move-object v4, v1

    move v1, v3

    goto :goto_13

    .line 70
    :goto_12
    invoke-static {v0}, La/l;->a(Ljava/lang/Exception;)V

    .line 71
    const-string v4, "Exception has been caught"

    .line 72
    invoke-static {v9, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 73
    :goto_13
    new-instance v0, Lb/a;

    new-instance v3, Lb/c;

    invoke-direct {v3, v1, v11, v12}, Lb/c;-><init>(ZILcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;)V

    invoke-virtual {v4}, Lg/a0;->a()J

    move-result-wide v4

    move-object/from16 p0, v0

    move-object/from16 p3, v2

    move-object/from16 p2, v3

    move-wide/from16 p4, v4

    move-object/from16 p1, v6

    invoke-direct/range {p0 .. p5}, Lb/a;-><init>(Landroid/graphics/Bitmap;Lb/c;Ljava/lang/Object;J)V

    return-object v0
.end method

.method public final a([Landroid/graphics/PointF;II)Ljava/util/Vector;
    .locals 1

    const-string v0, "corners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p0, p0, Lb/o;->b:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanAndroidShim;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->GetFinalWidthAndHeight([Landroid/graphics/PointF;II)Ljava/util/Vector;

    move-result-object p0

    const-string p1, "GetFinalWidthAndHeight(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    const-string p1, "MagicCleanEdgeDetection"

    invoke-static {p0, p1}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/util/Vector;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/Vector;-><init>(I)V

    return-object p0
.end method
