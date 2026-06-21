.class public final Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $image:Landroid/media/Image;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/media/Image;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->$image:Landroid/media/Image;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->$image:Landroid/media/Image;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;-><init>(Landroid/media/Image;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    sget-object v2, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->checkDocState:Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_c

    const/4 v1, 0x3

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->$image:Landroid/media/Image;

    iput v3, v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->label:I

    invoke-static {v2, v0}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->access$detectDocument(Landroid/media/Image;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_c

    return-object v1

    :cond_4
    :goto_0
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v1

    iget-object v1, v1, Lh/C;->d:Lh/d;

    iget-object v2, v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->$image:Landroid/media/Image;

    sget-object v5, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->sensorOrientation$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit16 v5, v5, 0x168

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v6, v6, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    invoke-static {v6}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v6

    sub-int/2addr v5, v6

    rem-int/lit16 v11, v5, 0x168

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lh/d;->g:La/B;

    const/4 v15, 0x0

    iput-object v15, v1, Lh/d;->g:La/B;

    new-instance v6, La/B;

    invoke-direct {v6, v2, v5}, La/B;-><init>(Landroid/media/Image;La/B;)V

    iput-object v6, v1, Lh/d;->g:La/B;

    iget-boolean v2, v6, La/B;->j:Z

    if-eqz v2, :cond_c

    iget v9, v6, La/B;->a:I

    iget v10, v6, La/B;->b:I

    iget-object v2, v1, Lh/d;->c:La/i;

    monitor-enter v2

    :try_start_0
    iget-object v5, v2, La/i;->f:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_5
    move v3, v7

    :goto_1
    monitor-exit v2

    if-nez v3, :cond_c

    iget-object v2, v1, Lh/d;->c:La/i;

    iget-boolean v3, v2, La/i;->d:Z

    if-eqz v3, :cond_c

    iget-object v3, v1, Lh/d;->d:La/f;

    const-string v5, "byteCache"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v6, La/B;->a:I

    iget v8, v6, La/B;->b:I

    iget-object v12, v6, La/B;->f:[B

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    const-string v13, "wrap(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int v13, v5, v8

    mul-int/lit8 v14, v13, 0x3

    div-int/2addr v14, v4

    invoke-virtual {v3, v14}, La/f;->a(I)[B

    move-result-object v3

    iget v14, v6, La/B;->c:I

    if-ne v14, v5, :cond_6

    invoke-virtual {v12, v3, v7, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move/from16 v16, v4

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v16, v4

    if-ge v7, v8, :cond_7

    mul-int v4, v7, v14

    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v4, v7, v5

    invoke-virtual {v12, v3, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget v4, v6, La/B;->d:I

    iget v7, v6, La/B;->e:I

    iget-object v12, v6, La/B;->f:[B

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    const-string v14, "wrap(...)"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v8, v8, 0x2

    iget v14, v6, La/B;->g:I

    iget v6, v6, La/B;->h:I

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v8, :cond_9

    mul-int v17, v15, v4

    move/from16 v18, v4

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_8

    add-int v19, v14, v6

    add-int v19, v19, v17

    aget-byte v19, v12, v19

    aput-byte v19, v3, v13

    add-int/lit8 v19, v13, 0x1

    add-int v20, v14, v17

    aget-byte v20, v12, v20

    aput-byte v20, v3, v19

    add-int v17, v17, v7

    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v18

    goto :goto_4

    :cond_9
    iget-boolean v12, v1, Lh/d;->e:Z

    new-instance v13, Lh/b;

    invoke-direct {v13, v1, v11}, Lh/b;-><init>(Lh/d;I)V

    monitor-enter v2

    :try_start_1
    iget-object v1, v2, La/i;->f:Lkotlinx/coroutines/StandaloneCoroutine;

    if-nez v1, :cond_b

    iget-boolean v1, v2, La/i;->d:Z

    if-eqz v1, :cond_b

    iget-object v1, v2, La/i;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, v2, La/i;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    array-length v4, v3

    if-eq v1, v4, :cond_a

    array-length v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v2, La/i;->e:Ljava/nio/ByteBuffer;

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v7, v2

    goto :goto_7

    :cond_a
    :goto_6
    iget-object v1, v2, La/i;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v4, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v4, v4, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v6, La/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v14, 0x0

    move-object v7, v2

    move-object v8, v3

    :try_start_2
    invoke-direct/range {v6 .. v14}, La/h;-><init>(La/i;[BIIIZLh/b;Lkotlin/coroutines/Continuation;)V

    move/from16 v3, v16

    const/4 v2, 0x0

    invoke-static {v1, v4, v2, v6, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v1

    iput-object v1, v7, La/i;->f:Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v7

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_b
    move-object v7, v2

    monitor-exit v7

    goto :goto_9

    :goto_7
    monitor-exit v7

    throw v0

    :goto_8
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_c
    :goto_9
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$processFrame$1;->$image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
