.class public final La/g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La/i;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La/g;->$r8$classId:I

    .line 2
    iput-object p1, p0, La/g;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, La/g;->$r8$classId:I

    iput-object p1, p0, La/g;->a:Ljava/lang/Object;

    iput-object p2, p0, La/g;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    iget v0, p0, La/g;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, La/g;

    iget-object v0, p0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object p0, p0, La/g;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p0, p2, v1}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_0
    new-instance p1, La/g;

    iget-object v0, p0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p0, p0, La/g;->b:Ljava/lang/Object;

    check-cast p0, Lg/J;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p0, p2, v1}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_1
    new-instance p1, La/g;

    iget-object v0, p0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Lc/G;

    iget-object p0, p0, La/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, p2, v1}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_2
    new-instance v0, La/g;

    iget-object p0, p0, La/g;->b:Ljava/lang/Object;

    check-cast p0, La/i;

    invoke-direct {v0, p0, p2}, La/g;-><init>(La/i;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, La/g;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, La/g;->$r8$classId:I

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance p1, La/g;

    iget-object v0, p0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object p0, p0, La/g;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p0, p2, v1}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, La/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, La/g;

    iget-object v0, p0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p0, p0, La/g;->b:Ljava/lang/Object;

    check-cast p0, Lg/J;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p0, p2, v1}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, La/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p1, La/g;

    iget-object v0, p0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Lc/G;

    iget-object p0, p0, La/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, p2, v1}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, La/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :pswitch_2
    new-instance v0, La/g;

    iget-object p0, p0, La/g;->b:Ljava/lang/Object;

    check-cast p0, La/i;

    invoke-direct {v0, p0, p2}, La/g;-><init>(La/i;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, La/g;->a:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, La/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, La/g;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, La/g;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v1, Lg/K;->b:Lg/K;

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, v0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    int-to-long v10, v0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    sget-object v1, Lg/K;->a:Lg/K;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "g.P"

    invoke-static {v2, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    sget-object v1, Lg/K;->c:Lg/K;

    :goto_3
    return-object v1

    :pswitch_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_5
    new-instance v1, Lcom/adobe/magic_clean/SmartEraserAndroidShim;

    invoke-direct {v1}, Lcom/adobe/magic_clean/SmartEraserAndroidShim;-><init>()V

    new-instance v4, Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;

    iget-object v0, v0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v4, v0}, Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;-><init>(Landroid/graphics/Bitmap;)V

    iput-boolean v3, v4, Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;->mEnableBetaFeatures:Z

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/adobe/magic_clean/SmartEraserAndroidShim;->Initialize(Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object v1

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    if-ne v1, v3, :cond_1

    iget-object v2, v0, Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;->mBackgroundBmp:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "G"

    invoke-static {v0, v1}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    :cond_1
    :goto_4
    return-object v2

    :pswitch_1
    iget-object v0, v0, La/g;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lc/G;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_6
    sget-object v0, Lc/G;->j:Lc/e;

    invoke-virtual {v1}, Lc/G;->d()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    sget-object v2, Lc/G;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    check-cast v4, Ljava/io/File;

    invoke-virtual {v1, v4}, Lc/G;->a(Ljava/io/File;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v0, La/g;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    check-cast v4, La/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v5, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;

    iget-object v6, v4, La/i;->l:[B

    iget v7, v4, La/i;->m:I

    iget v8, v4, La/i;->n:I

    iget v9, v4, La/i;->o:I

    iget-boolean v11, v4, La/i;->p:Z

    iget-object v12, v4, La/i;->g:Ljava/lang/String;

    iget v0, v4, La/i;->h:F

    float-to-double v13, v0

    iget-object v15, v4, La/i;->i:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v15}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;-><init>([BIIIZZLjava/lang/String;DLcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;)V

    iget-object v0, v4, La/i;->l:[B

    if-eqz v0, :cond_5

    iget-object v0, v4, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;

    invoke-direct {v1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_7
    iget-object v0, v4, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5, v1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->getLiveCornersGray(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    move v3, v5

    goto :goto_6

    :catch_4
    move-exception v0

    const-string v5, "a.i"

    const-string v6, "CameraCleanLiveEdgeDetectionAndroidShim.getLiveCornersGray threw exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_6
    iput-boolean v3, v4, La/i;->k:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-boolean v0, v4, La/i;->k:Z

    if-eqz v0, :cond_4

    iget-wide v2, v4, La/i;->b:J

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    iput-wide v2, v4, La/i;->b:J

    move-object v2, v1

    goto :goto_7

    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, v4, La/i;->b:J

    :cond_5
    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
