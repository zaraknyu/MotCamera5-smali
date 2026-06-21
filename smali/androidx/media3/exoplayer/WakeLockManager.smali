.class public final Landroidx/media3/exoplayer/WakeLockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public stayAwake:Z


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/WakeLockManager;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;I)V
    .locals 0

    iput p4, p0, Landroidx/media3/exoplayer/WakeLockManager;->$r8$classId:I

    packed-switch p4, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p0, Lokio/Timeout;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lokio/Timeout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p3, p2, p0}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p0, Lcom/google/mlkit/common/internal/zze;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/internal/zze;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {p3, p2, p0}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/media3/container/ObuParser;Landroidx/media3/container/ObuParser$Obu;)V
    .locals 6

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/WakeLockManager;->$r8$classId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p2, Landroidx/media3/container/ObuParser$Obu;->type:I

    iget-object p2, p2, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    const/4 v0, 0x4

    .line 12
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 14
    new-instance p2, Landroidx/media3/extractor/VorbisBitArray;

    .line 15
    invoke-direct {p2, v0, v1}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 17
    invoke-virtual {p2}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iput-boolean v2, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    goto :goto_6

    :cond_2
    const/4 p1, 0x2

    .line 19
    invoke-virtual {p2, p1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    .line 20
    invoke-virtual {p2}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v1

    const/4 v5, 0x0

    .line 21
    invoke-static {v5}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    if-nez v1, :cond_3

    .line 22
    iput-boolean v4, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    goto :goto_6

    :cond_3
    if-eq v0, v3, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {p2}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v1

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v4

    .line 24
    :goto_3
    invoke-virtual {p2}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    const/4 v5, 0x0

    xor-int/2addr v5, v4

    .line 25
    invoke-static {v5}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 26
    invoke-virtual {p2}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    xor-int/2addr v5, v4

    .line 27
    invoke-static {v5}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 28
    invoke-virtual {p2}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    :cond_6
    const/4 v5, 0x0

    .line 29
    invoke-static {v5}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    if-eq v0, v3, :cond_7

    .line 30
    invoke-virtual {p2}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    :cond_7
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p2, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    if-eq v0, p1, :cond_8

    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    .line 32
    invoke-virtual {p2, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_8
    if-eq v0, v3, :cond_a

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    const/16 p1, 0x8

    .line 33
    invoke-virtual {p2, p1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result p1

    goto :goto_5

    :cond_a
    :goto_4
    const/16 p1, 0xff

    :goto_5
    if-eqz p1, :cond_b

    move v2, v4

    .line 34
    :cond_b
    iput-boolean v2, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    :goto_6
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/exoplayer/WakeLockManager;->$r8$classId:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized blockUninterruptible()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized open()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setStayAwake(Z)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/WakeLockManager;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
