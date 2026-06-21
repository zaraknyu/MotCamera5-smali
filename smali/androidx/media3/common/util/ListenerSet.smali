.class public final Landroidx/media3/common/util/ListenerSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clock:Landroidx/media3/common/util/SystemClock;

.field public final flushingEvents:Ljava/util/ArrayDeque;

.field public final handler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public final iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final queuedEvents:Ljava/util/ArrayDeque;

.field public released:Z

.field public final releasedLock:Ljava/lang/Object;

.field public final throwsWhenUsingWrongThread:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet;->clock:Landroidx/media3/common/util/SystemClock;

    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p4, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    .line 9
    new-instance p1, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p1, p4, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p2, p1}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 11
    iput-boolean p5, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/ListenerSet;->released:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    invoke-direct {v1, p1}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final flushEvents()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v2, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v2

    iget-object v4, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    iget-object v1, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v2}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    :cond_1
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0, p2}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final release()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/common/util/ListenerSet;->released:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    iput-boolean v1, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    iget-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    iget-object v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object v2, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/DownUpDetector;->build()Landroidx/media3/common/FlagSet;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final verifyCurrentThread()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    return-void
.end method
