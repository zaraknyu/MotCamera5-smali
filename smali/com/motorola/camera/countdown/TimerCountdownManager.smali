.class public abstract Lcom/motorola/camera/countdown/TimerCountdownManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static countdownFinishRunnable:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

.field public static handler:Lcom/google/android/gms/internal/base/zau;

.field public static isRunning:Z

.field public static timer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static registerCallback(Lcom/motorola/camera/countdown/TimerCountdownCallback;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static start(I)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-boolean v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/base/zau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/base/zau;-><init>()V

    sput-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    sput p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    :cond_0
    return-void
.end method

.method public static stop(Z)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->countdownFinishRunnable:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraApp;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->run()V

    :cond_2
    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    if-eqz p0, :cond_3

    invoke-interface {v2}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountDownCancel()V

    :cond_3
    sget-object v3, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sput-boolean v1, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    sput v1, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/4 p0, 0x0

    sput-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    sput-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->countdownFinishRunnable:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    return-void
.end method
