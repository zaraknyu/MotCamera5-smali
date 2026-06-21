.class public final Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public mCacheAfMode:I

.field public mCurrentAfMode:I

.field public final mFocusMap:Ljava/util/TreeMap;

.field public mIsPassiveFocusSuccessful:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I

    return-void
.end method

.method public static getAfModeAsString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string v0, "UNKNOWN("

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CONTROL_AF_MODE_EDOF"

    return-object p0

    :cond_1
    const-string p0, "CONTROL_AF_MODE_CONTINUOUS_PICTURE"

    return-object p0

    :cond_2
    const-string p0, "CONTROL_AF_MODE_CONTINUOUS_VIDEO"

    return-object p0

    :cond_3
    const-string p0, "CONTROL_AF_MODE_MACRO"

    return-object p0

    :cond_4
    const-string p0, "CONTROL_AF_MODE_AUTO"

    return-object p0

    :cond_5
    const-string p0, "CONTROL_AF_MODE_OFF"

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized handleAfModeUninitialized()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AutoFocusStateMachine"

    const-string v1, "handleAfModeUninitialized: AF mode was not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isAutoFocus()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isPassiveFocus()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isPassiveFocusEnabledAndSuccessful()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mIsPassiveFocusSuccessful:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    const-string v1, "AutoFocusStateMachine"

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez p2, :cond_0

    .line 4
    const-string p0, "onCaptureCompleted - missing result, skipping AF update"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 6
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 7
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 8
    const-string p0, "onCaptureCompleted - missing afMode !"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_3

    if-nez v5, :cond_4

    if-eqz p3, :cond_2

    goto/16 :goto_b

    .line 10
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 11
    const-string p0, "onCaptureCompleted - missing android.control.afState !"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_4
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-nez p3, :cond_5

    .line 13
    new-instance p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    .line 14
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 15
    iput v1, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    .line 16
    iput v1, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    .line 17
    iput v7, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastLensState:I

    .line 18
    iput-boolean v7, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z

    const-wide/16 v8, -0x1

    .line 19
    iput-wide v8, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mFrameNumber:J

    .line 20
    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_5
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    .line 22
    iget-wide v8, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mFrameNumber:J

    cmp-long v6, v8, v0

    if-lez v6, :cond_6

    goto/16 :goto_b

    .line 23
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v8, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    if-ne v6, v8, :cond_8

    .line 24
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_7

    .line 25
    iget v6, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastLensState:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v6, v8, :cond_8

    goto/16 :goto_b

    .line 26
    :cond_7
    iget v6, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v6, v8, :cond_8

    goto/16 :goto_b

    .line 27
    :cond_8
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onFocusModeChanged(I)V

    goto :goto_1

    .line 29
    :cond_9
    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v6, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v6, :cond_a

    .line 31
    iput-boolean v7, v6, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_c

    .line 32
    :cond_a
    :goto_2
    monitor-exit p0

    .line 33
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    if-eqz v3, :cond_b

    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    :cond_b
    if-eqz v5, :cond_c

    .line 35
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastLensState:I

    .line 36
    :cond_c
    iput-wide v0, p3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mFrameNumber:J

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_b

    .line 38
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_e

    .line 39
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_b

    .line 40
    :pswitch_0
    iput-boolean v7, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mIsPassiveFocusSuccessful:Z

    .line 41
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 42
    invoke-interface {p1, p2, v7}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V

    goto :goto_3

    .line 43
    :pswitch_1
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 44
    invoke-interface {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V

    goto :goto_4

    .line 45
    :pswitch_2
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 46
    invoke-interface {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V

    goto :goto_5

    .line 47
    :pswitch_3
    iput-boolean p3, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mIsPassiveFocusSuccessful:Z

    .line 48
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 49
    invoke-interface {p1, p2, v7}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V

    goto :goto_6

    .line 50
    :pswitch_4
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 51
    invoke-interface {p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_7

    .line 52
    :pswitch_5
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 53
    invoke-interface {p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_8

    .line 54
    :cond_e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_f

    .line 55
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 56
    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onManualFocusCompleted()V

    goto :goto_9

    .line 57
    :cond_f
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 58
    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onManualFocusStarted()V

    goto :goto_a

    :cond_10
    :goto_b
    return-void

    .line 59
    :goto_c
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
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

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public final declared-synchronized resetState()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized setManualFocus(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
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

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, " cid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " currentAfMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->getAfModeAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized triggerAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->handleAfModeUninitialized()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
