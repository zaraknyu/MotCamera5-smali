.class public Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mHandleLockRunnable:Ljava/lang/Object;

.field public final mLock:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;IZ)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mHandleLockRunnable:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->$r8$classId:I

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mHandleLockRunnable:Ljava/lang/Object;

    .line 6
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mHandleLockRunnable:Ljava/lang/Object;

    .line 9
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 5
    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 p3, 0xa

    invoke-direct {p2, p3, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mHandleLockRunnable:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    :goto_0
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 12
    const-string p3, "REVIEW_ACCEPT"

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    const-string p3, "SEQ_ID"

    .line 14
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getSequenceListForRoot(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Ljava/util/ArrayList;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_6

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 17
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mHandleLockRunnable:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;

    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    .line 18
    :try_start_0
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 19
    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v3, :cond_2

    .line 20
    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v5, "REVIEW_ACCEPT"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    invoke-static {p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureHolderForSeqId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/saving/CaptureHolder;

    move-result-object p3

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSetResultListener:Ljava/lang/ref/WeakReference;

    if-nez p3, :cond_1

    .line 23
    iget-object p3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {v3, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    goto :goto_2

    .line 24
    :cond_1
    invoke-static {p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 26
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Setting result on invalid capture!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 28
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 29
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "SHOULD_EXIT"

    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    if-nez p1, :cond_5

    .line 31
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 32
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_4

    .line 33
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 34
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_5
    :goto_4
    return-void

    .line 35
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "save failed for invalid capture!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    const/4 v2, 0x1

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 40
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 42
    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 43
    iget-boolean v7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    if-eqz v7, :cond_7

    .line 44
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 46
    :cond_7
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-nez v3, :cond_c

    const/16 v3, 0xd

    .line 47
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x3

    .line 48
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_5

    .line 49
    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 50
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 51
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 52
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v5, v8, :cond_9

    .line 53
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v5

    if-nez v5, :cond_9

    .line 54
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v1, v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    if-ne v2, v8, :cond_a

    .line 56
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v0, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v1, v0, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    if-ne v3, v8, :cond_b

    .line 58
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v1, v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    if-nez v8, :cond_e

    .line 60
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    .line 62
    :cond_c
    :goto_5
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 63
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 64
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_d

    .line 65
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v1, v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    if-nez v3, :cond_e

    .line 67
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 69
    :cond_e
    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mHandleLockRunnable:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
