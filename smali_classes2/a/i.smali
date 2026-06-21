.class public final La/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

.field public b:J

.field public c:I

.field public d:Z

.field public e:Ljava/nio/ByteBuffer;

.field public f:Lkotlinx/coroutines/StandaloneCoroutine;

.field public g:Ljava/lang/String;

.field public h:F

.field public i:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public j:Lh/b;

.field public k:Z

.field public l:[B

.field public m:I

.field public n:I

.field public o:I

.field public p:Z


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V
    .locals 4

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, La/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, La/i;->c:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget v0, p0, La/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/i;->c:I

    :goto_0
    iget-object v0, p0, La/i;->j:Lh/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, La/i;->l:[B

    iget-object v0, v0, Lh/b;->a:Lh/d;

    iget-object v0, v0, Lh/d;->d:La/f;

    invoke-virtual {v0, v2}, La/f;->a([B)V

    iput-object v1, p0, La/i;->l:[B

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, La/i;->d:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p1, p0, La/i;->j:Lh/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lh/b;->a(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iput-object v1, p0, La/i;->f:Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, La/i;->d:Z

    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, La/i;->d:Z

    iget-object v0, p0, La/i;->f:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, La/i;->f:Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v0, p0, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->cleanup()V

    :cond_1
    iput-object v1, p0, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :try_start_1
    new-instance v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;-><init>(D)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->setDisplayedBoundaryUpdateInterval(J)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->setLiveBoundaryHintUpdateInterval(J)V

    sget-object v1, Lg/v;->a:Lg/v;

    if-nez v1, :cond_2

    new-instance v1, Lg/v;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lg/v;->a:Lg/v;

    :cond_2
    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->setLiveBoundaryCaptureEnableInterval(J)V

    iput-object v0, p0, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
