.class public final Landroidx/media3/common/util/NetworkTypeObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public isInitialized:Z

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final lock:Ljava/lang/Object;

.field public networkType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/media3/common/util/Log;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;
    .locals 2

    const-class v0, Landroidx/media3/common/util/NetworkTypeObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-direct {v1, p0}, Landroidx/media3/common/util/NetworkTypeObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final getNetworkType()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateNetworkType(I)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    iget-object v3, v2, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->isInitialized:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    if-ne v1, p1, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->isInitialized:Z

    iput p1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    iget-object v0, p1, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p1}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
