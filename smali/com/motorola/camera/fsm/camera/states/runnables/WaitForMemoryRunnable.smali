.class public final Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final mShotType:Lcom/motorola/camera/ShotType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ShotType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    return-void
.end method

.method public static handleStorageFull()V
    .locals 2

    .line 8
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    .line 14
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 15
    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull(Ljava/lang/Integer;)V

    return-void
.end method

.method public static handleStorageFull(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;-><init>(Ljava/lang/Integer;)V

    .line 2
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    .line 3
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x1040009

    .line 4
    iput p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 5
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 9

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    const-string v0, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/16 p1, 0x23

    .line 8
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    :cond_3
    const-class p1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p1

    .line 10
    :try_start_0
    invoke-static {p2, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->canDoNextCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-nez v0, :cond_4

    .line 11
    const-string p0, "WaitForMemoryRunnable"

    const-string p1, "Cannot do next capture, queue is full, aborting"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 14
    :cond_4
    new-instance p1, Landroidx/media3/exoplayer/WakeLockManager;

    const/4 v0, 0x5

    .line 15
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/WakeLockManager;-><init>(I)V

    .line 16
    iput-boolean p3, p1, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->translateShotType()Lcom/motorola/camera/ShotType;

    move-result-object v0

    .line 18
    invoke-static {v0, p1}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Landroidx/media3/exoplayer/WakeLockManager;)Z

    move-result v1

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    if-eqz v2, :cond_7

    :cond_6
    :goto_1
    move v0, v3

    goto :goto_3

    .line 21
    :cond_7
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBgService()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    .line 23
    :cond_8
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 24
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 25
    check-cast v4, Landroid/util/Size;

    .line 26
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v4, v5

    .line 27
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRawScene()Z

    move-result v2

    if-eqz v2, :cond_9

    mul-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_9
    mul-int/lit8 v4, v4, 0x3

    .line 28
    div-int/lit8 v4, v4, 0x2

    :goto_2
    const-wide/16 v5, 0xa

    int-to-long v7, v4

    mul-long/2addr v7, v5

    .line 29
    invoke-virtual {v0}, Lcom/motorola/camera/ShotType;->getMinimumFreeBytes()J

    move-result-wide v4

    add-long/2addr v4, v7

    .line 30
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_a

    goto :goto_1

    :cond_a
    move v0, p3

    .line 32
    :goto_3
    sget-boolean v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    .line 33
    iget-boolean p1, p1, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    .line 34
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->translateShotType()Lcom/motorola/camera/ShotType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 35
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_5

    .line 36
    :pswitch_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_5

    :pswitch_1
    if-nez p1, :cond_b

    .line 37
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_5

    .line 38
    :cond_b
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CURRENT_MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_5

    :pswitch_2
    const/4 p0, 0x0

    .line 39
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->canSaveSingleShot(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 40
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 41
    iput-boolean p3, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    .line 42
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_5

    .line 43
    :cond_c
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_5

    :cond_d
    if-eqz v2, :cond_f

    if-nez v0, :cond_e

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull(Ljava/lang/Integer;)V

    goto :goto_4

    .line 45
    :cond_e
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    .line 46
    :goto_4
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_5

    .line 47
    :cond_f
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 48
    :goto_5
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final translateShotType()Lcom/motorola/camera/ShotType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRawScene()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    :cond_0
    return-object p0
.end method
