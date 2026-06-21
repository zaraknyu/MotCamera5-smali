.class public final Lcom/motorola/camera/device/CameraStateManager;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public final mCameraAvailableStatusMap:Ljava/util/LinkedHashMap;

.field public final mCameraInfoMap:Ljava/util/LinkedHashMap;

.field public mFsmThreadId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraAvailableStatusMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    invoke-direct {v3, v1}, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;-><init>(Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V

    .line 6
    invoke-interface {p1, v2, v3}, Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;->onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bridge synthetic addStateListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/CameraStateManager;->addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V

    return-void
.end method

.method public final declared-synchronized allCameraSessionsClosed()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    iget-object v3, v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq v4, v3, :cond_0

    sget-object v4, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v1

    :goto_2
    and-int/2addr v2, v3

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v2

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized allCameraSessionsOpened()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    sget-object v4, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    iget-object v3, v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq v4, v3, :cond_1

    sget-object v4, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    move v3, v1

    :goto_2
    and-int/2addr v2, v3

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v2

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized allCamerasClosed()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    iget-object v3, v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    move v3, v1

    :goto_2
    and-int/2addr v2, v3

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v2

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/CameraStateManager;->notifyStatus(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getCameraOpen(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget-object p1, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getCameraSession(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iget-object p1, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getOpenCameraIds()Ljava/util/ArrayList;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget-object v3, v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    sget-object v4, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getOpenSessionCameraIds()Ljava/util/ArrayList;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget-object v3, v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    sget-object v4, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getPreviewStatus(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x2

    return p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget p1, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized isMaster(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget-boolean p1, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized notifyStatus(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;

    new-instance v2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget-object v3, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    invoke-direct {v2, v3}, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;-><init>(Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V

    invoke-interface {v1, p1, v2}, Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;->onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetState()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V
    .locals 3

    const-string/jumbo v0, "setCameraOpen id:"

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CameraStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;

    iput-object v1, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    iput-object v1, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    const/4 v1, 0x2

    iput v1, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iput-object p2, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/CameraStateManager;->notifyStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V
    .locals 4

    const-string/jumbo v0, "setCameraSession fsmId:"

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CameraStateManager"

    iget-object v2, p0, Lcom/motorola/camera/device/CameraStateManager;->mFsmThreadId:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " id:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iput-object p2, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/CameraStateManager;->notifyStatus(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t enable a session without the camera being opened"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setCloseAfterError(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "Can\'t set CloseAfterError status without the camera being opened, cameraId:"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iput-boolean p2, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setLinked(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "Can\'t set link status without the camera being opened, cameraId:"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iput-boolean p2, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setMaster(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iput-boolean p2, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t set master status without the camera being opened"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setPreviewStatus(ILjava/lang/String;)Z
    .locals 5

    const-string v0, "camera status: "

    const-string v1, "Can\'t set stream status: "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    if-eq v4, p1, :cond_1

    const-string v1, "CameraStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->stringValueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", it\'s infoMap has been cleared,cid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->stringValueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " without the camera being opened,cid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iput p1, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    invoke-virtual {p0, p2}, Lcom/motorola/camera/device/CameraStateManager;->notifyStatus(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
