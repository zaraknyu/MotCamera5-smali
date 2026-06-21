.class public final Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDuration:J

.field public mLastShutterTime:J

.field public mShutterBlocked:Z

.field public mStartLastShutterTime:J


# virtual methods
.method public final declared-synchronized setBlockShutter(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mShutterBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
