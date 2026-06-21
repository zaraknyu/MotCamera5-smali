.class public final Lc/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lc/e;

.field public static final synthetic k:[Lkotlin/reflect/KProperty;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lc/B;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getMFile()Ljava/io/File;"

    const/4 v2, 0x0

    const-class v3, Lc/G;

    const-string v4, "mFile"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lc/G;->k:[Lkotlin/reflect/KProperty;

    new-instance v0, Lc/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/G;->j:Lc/e;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/G;->l:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc/G;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newFixedThreadPool(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/G;->a:Ljava/lang/String;

    sget-object p1, Lc/G;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance p1, Lc/B;

    invoke-direct {p1, p0}, Lc/B;-><init>(Lc/G;)V

    iput-object p1, p0, Lc/G;->b:Lc/B;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/G;->c:Ljava/util/ArrayList;

    const/16 p1, 0x50

    iput p1, p0, Lc/G;->h:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc/G;->a(Ljava/io/File;)V

    const/4 p1, 0x0

    iput p1, p0, Lc/G;->d:I

    iput p1, p0, Lc/G;->e:I

    iput-boolean p3, p0, Lc/G;->f:Z

    iput-boolean p2, p0, Lc/G;->g:Z

    return-void
.end method

.method public static final a(Lc/G;Landroid/graphics/BitmapFactory$Options;Ljava/io/File;Lc/A;)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lc/G;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p1

    .line 2
    :try_start_0
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    move v3, v4

    .line 3
    :cond_0
    iget v5, v0, Lc/G;->d:I

    div-int v6, v5, v3

    .line 4
    iget v7, v0, Lc/G;->e:I

    div-int v3, v7, v3

    const/16 v8, 0x1000

    if-gt v6, v8, :cond_2

    if-le v3, v8, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_11

    :cond_2
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    if-gt v5, v8, :cond_3

    if-le v7, v8, :cond_4

    :cond_3
    move/from16 v21, v3

    const/16 v16, 0x0

    goto/16 :goto_d

    :cond_4
    const/4 v6, 0x0

    cmpg-float v8, v3, v6

    if-gtz v8, :cond_5

    goto :goto_0

    :cond_5
    int-to-float v8, v5

    div-float/2addr v8, v3

    float-to-int v9, v8

    int-to-float v10, v9

    sub-float/2addr v8, v10

    cmpg-float v8, v8, v6

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 5
    :goto_3
    iget v8, v0, Lc/G;->d:I

    if-le v9, v8, :cond_7

    move v9, v8

    :cond_7
    int-to-float v8, v7

    div-float/2addr v8, v3

    float-to-int v10, v8

    int-to-float v11, v10

    sub-float/2addr v8, v11

    cmpg-float v8, v8, v6

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 6
    :goto_4
    iget v0, v0, Lc/G;->e:I

    if-le v10, v0, :cond_9

    move v10, v0

    .line 7
    :cond_9
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_a

    goto :goto_0

    .line 8
    :cond_a
    :try_start_1
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 10
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 12
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 15
    iput-boolean v4, v13, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 16
    iput-object v0, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 17
    iput v4, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    invoke-static {v12, v10}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    const/16 v4, 0x800

    invoke-static {v0, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 19
    iget v14, v0, Lkotlin/ranges/IntProgression;->first:I

    .line 20
    iget v15, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 21
    iget v0, v0, Lkotlin/ranges/IntProgression;->step:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v0, :cond_b

    if-le v14, v15, :cond_c

    :cond_b
    if-gez v0, :cond_14

    if-gt v15, v14, :cond_14

    :cond_c
    :goto_5
    const/16 v16, 0x0

    add-int/lit16 v2, v14, 0x800

    if-le v2, v10, :cond_d

    move v2, v10

    .line 22
    :cond_d
    :try_start_4
    invoke-static {v12, v9}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    move-result-object v6

    .line 23
    iget v4, v6, Lkotlin/ranges/IntProgression;->first:I

    .line 24
    iget v12, v6, Lkotlin/ranges/IntProgression;->last:I

    .line 25
    iget v6, v6, Lkotlin/ranges/IntProgression;->step:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v6, :cond_e

    if-le v4, v12, :cond_f

    :cond_e
    if-gez v6, :cond_12

    if-gt v12, v4, :cond_12

    :cond_f
    move/from16 v18, v0

    move-object/from16 v17, v5

    :goto_6
    move-object/from16 v5, p3

    .line 26
    :try_start_5
    iget-object v0, v5, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    add-int/lit16 v0, v4, 0x800

    if-le v0, v9, :cond_10

    move v0, v9

    .line 29
    :cond_10
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v14, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v11, :cond_11

    .line 30
    invoke-virtual {v11, v5, v13}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    move/from16 v19, v2

    .line 31
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v20, v6

    .line 32
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v6, v3}, La/l;->a(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v6

    move/from16 v21, v3

    .line 33
    new-instance v3, Landroid/graphics/RectF;

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move/from16 v23, v9

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    move/from16 v22, v10

    const/4 v10, 0x0

    invoke-direct {v3, v10, v10, v5, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v6, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 34
    invoke-virtual {v7, v0, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v11

    goto/16 :goto_12

    :catch_0
    move-exception v0

    :goto_7
    move-object/from16 v5, v17

    goto/16 :goto_e

    :catch_1
    move-exception v0

    :goto_8
    move-object/from16 v5, v17

    goto/16 :goto_f

    :cond_11
    move/from16 v19, v2

    move/from16 v21, v3

    move/from16 v20, v6

    move/from16 v23, v9

    move/from16 v22, v10

    const/4 v10, 0x0

    :goto_9
    if-eq v4, v12, :cond_13

    add-int v4, v4, v20

    move/from16 v2, v19

    move/from16 v6, v20

    move/from16 v3, v21

    move/from16 v10, v22

    move/from16 v9, v23

    goto :goto_6

    :cond_12
    move/from16 v18, v0

    move/from16 v21, v3

    move-object/from16 v17, v5

    move/from16 v23, v9

    move/from16 v22, v10

    const/4 v10, 0x0

    :cond_13
    if-eq v14, v15, :cond_15

    add-int v14, v14, v18

    move v6, v10

    move-object/from16 v5, v17

    move/from16 v0, v18

    move/from16 v3, v21

    move/from16 v10, v22

    move/from16 v9, v23

    const/16 v4, 0x800

    const/4 v12, 0x0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_f

    :cond_14
    move-object/from16 v17, v5

    :cond_15
    if-eqz v11, :cond_16

    .line 36
    invoke-virtual {v11}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_16
    return-object v17

    :catch_4
    move-exception v0

    move-object/from16 v17, v5

    const/16 v16, 0x0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v17, v5

    const/16 v16, 0x0

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    const/16 v16, 0x0

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v17, v5

    const/16 v16, 0x0

    goto :goto_8

    :catchall_1
    move-exception v0

    const/16 v16, 0x0

    :goto_a
    move-object/from16 v2, v16

    goto/16 :goto_12

    :catch_8
    move-exception v0

    move-object/from16 v17, v5

    const/16 v16, 0x0

    move-object/from16 v11, v16

    goto :goto_e

    :catch_9
    move-exception v0

    move-object/from16 v17, v5

    const/16 v16, 0x0

    move-object/from16 v11, v16

    goto :goto_f

    :catch_a
    move-exception v0

    const/16 v16, 0x0

    :goto_b
    move-object/from16 v5, v16

    move-object v11, v5

    goto :goto_e

    :catch_b
    move-exception v0

    const/16 v16, 0x0

    :goto_c
    move-object/from16 v5, v16

    move-object v11, v5

    goto :goto_f

    :goto_d
    const/high16 v2, 0x3e000000    # 0.125f

    sub-float v3, v21, v2

    .line 37
    :try_start_6
    iget v2, v0, Lc/G;->d:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v5, v2

    .line 38
    iget v2, v0, Lc/G;->e:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v7, v2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_c
    move-exception v0

    goto :goto_b

    :catch_d
    move-exception v0

    goto :goto_c

    :goto_e
    if-eqz v5, :cond_17

    .line 39
    :try_start_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_17

    .line 40
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    :cond_17
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_19

    goto :goto_10

    :goto_f
    if-eqz v5, :cond_18

    .line 42
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_18

    .line 43
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    :cond_18
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1a

    .line 45
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v11, :cond_19

    .line 46
    :goto_10
    invoke-virtual {v11}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_19
    :goto_11
    return-object v16

    .line 47
    :cond_1a
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_12
    if-eqz v2, :cond_1b

    .line 48
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_1b
    throw v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lc/E;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/E;

    iget v1, v0, Lc/E;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/E;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/E;

    invoke-direct {v0, p0, p2}, Lc/E;-><init>(Lc/G;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lc/E;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 69
    iget v2, v0, Lc/E;->f:I

    sget-object v3, Lc/G;->l:Ljava/lang/String;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lc/E;->b:Landroid/graphics/Bitmap;

    iget-object p1, v0, Lc/E;->a:Lc/G;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lc/E;->c:Ljava/io/File;

    iget-object p1, v0, Lc/E;->b:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lc/E;->a:Lc/G;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p2

    move-object p2, p0

    move-object p0, v2

    move-object v2, v9

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-boolean p2, p0, Lc/G;->g:Z

    if-eqz p2, :cond_4

    .line 71
    const-string p0, "ImageRendition.updateUnencoded encountered encoded instance"

    invoke-static {v3, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 72
    :cond_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 73
    iget-boolean p2, p0, Lc/G;->g:Z

    invoke-static {p2}, Lg/Z;->a(Z)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 74
    iput-object p0, v0, Lc/E;->a:Lc/G;

    iput-object p1, v0, Lc/E;->b:Landroid/graphics/Bitmap;

    iput-object p2, v0, Lc/E;->c:Ljava/io/File;

    iput v6, v0, Lc/E;->f:I

    .line 75
    sget-object v2, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v2, La/g;

    const/4 v8, 0x3

    invoke-direct {v2, p2, p1, v7, v8}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v2, v0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_4

    .line 76
    :cond_5
    :goto_1
    check-cast v2, Lg/K;

    goto :goto_2

    :cond_6
    sget-object v2, Lg/K;->b:Lg/K;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_9

    if-eq v2, v6, :cond_8

    if-ne v2, v5, :cond_7

    return-object v4

    .line 77
    :cond_7
    new-instance p0, Lcom/google/gson/JsonParseException;

    .line 78
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 79
    throw p0

    .line 80
    :cond_8
    const-string p1, "ImageRendition.updateUnencoded failed to serialze Bitmap"

    invoke-static {v3, p1}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v7}, Lc/G;->a(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lc/G;->d:I

    .line 83
    iput p1, p0, Lc/G;->e:I

    return-object v4

    .line 84
    :cond_9
    iput-object p0, v0, Lc/E;->a:Lc/G;

    iput-object p1, v0, Lc/E;->b:Landroid/graphics/Bitmap;

    iput-object v7, v0, Lc/E;->c:Ljava/io/File;

    iput v5, v0, Lc/E;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    sget-object v2, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v2, La/g;

    invoke-direct {v2, p0, p2, v7, v6}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v2, v0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    goto :goto_3

    :cond_a
    move-object p2, v4

    :goto_3
    if-ne p2, v1, :cond_b

    :goto_4
    return-object v1

    :cond_b
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    .line 86
    :goto_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p1, Lc/G;->d:I

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iput p0, p1, Lc/G;->e:I

    return-object v4
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lc/G;->l:Ljava/lang/String;

    instance-of v1, p1, Lc/F;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lc/F;

    iget v2, v1, Lc/F;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lc/F;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lc/F;

    invoke-direct {v1, p0, p1}, Lc/F;-><init>(Lc/G;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lc/F;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 50
    iget v3, v1, Lc/F;->d:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, Lc/F;->a:Lc/G;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lc/G;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 52
    invoke-virtual {p0}, Lc/G;->d()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 54
    iget-boolean v3, p0, Lc/G;->g:Z

    if-nez v3, :cond_4

    .line 55
    iput-object p0, v1, Lc/F;->a:Lc/G;

    iput v4, v1, Lc/F;->d:I

    .line 56
    sget-object v0, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v0, Lg/M;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v4}, Lg/M;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v0, v1}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    .line 57
    :cond_3
    :goto_1
    check-cast p1, Landroid/util/Size;

    if-eqz p1, :cond_5

    .line 58
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lc/G;->d:I

    .line 59
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lc/G;->e:I

    goto :goto_4

    .line 60
    :cond_4
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Lc/G;->d:I

    .line 64
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lc/G;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 65
    :goto_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 66
    :goto_3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lc/G;->g()Z

    move-result p0

    xor-int/2addr p0, v4

    .line 68
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/io/File;)V
    .locals 2

    .line 49
    sget-object v0, Lc/G;->k:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lc/G;->b:Lc/B;

    invoke-virtual {p0, p1, v0}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    return-void
.end method

.method public final d()Ljava/io/File;
    .locals 2

    sget-object v0, Lc/G;->k:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lc/G;->b:Lc/B;

    invoke-virtual {v1, p0, v0}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lc/G;->d()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lc/G;->d:I

    if-eqz v0, :cond_1

    iget p0, p0, Lc/G;->e:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h()V
    .locals 4

    iget-boolean v0, p0, Lc/G;->g:Z

    iget-boolean v1, p0, Lc/G;->f:Z

    invoke-virtual {p0}, Lc/G;->d()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lc/G;->a(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lc/G;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lc/G;->d:I

    iput v2, p0, Lc/G;->e:I

    iput-boolean v1, p0, Lc/G;->f:Z

    iput-boolean v0, p0, Lc/G;->g:Z

    return-void
.end method
