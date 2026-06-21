.class public Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

.field public mExposureLock:Z

.field public mFocusLock:Z

.field public mFrameCnt:I

.field public mHighSpeedRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;

.field public mIsComplete:Z

.field public mIsFlashExpected:Z

.field public final mLock:Z

.field public final mLockMap:Ljava/util/LinkedHashMap;

.field public final mLockType:I

.field public mPreTrigger:Z

.field public mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public mTimeoutChecking:Z

.field public mTimeoutFrames:I


# direct methods
.method public static -$$Nest$mprocessAutoFocusChanges(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V
    .locals 10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v7, :cond_1

    instance-of v0, p2, Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v9, p1

    move-object v8, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Ljava/lang/Integer;ZZZLandroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_2
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    return-void
.end method

.method public static getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getFocusBundle(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Landroid/os/Bundle;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    iget-object v2, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_SUCCESS:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "FOCUS_SUCCESS"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "FOCUS_LOCKED"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "FOCAL_LENGTH"

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "FOCUS_TIMEOUT"

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public static handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_FAILED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_SUCCESS:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {p0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    if-eqz p1, :cond_1

    move-object v1, v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    filled-new-array {p1, v0}, [Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final checkExposure(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;Z)Z
    .locals 7

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_TIME_SENSITIVITY_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    if-nez v2, :cond_3

    if-eqz p3, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v4, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureCompleted - missing android.control.mAeState!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p2

    iget p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq p0, v3, :cond_9

    iget-wide v5, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    cmp-long p0, v5, p2

    if-ltz p0, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object p0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_CHECK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x5

    if-ne p0, v3, :cond_6

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRECAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x4

    if-eq p0, v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v4, 0x3

    if-ne p0, v4, :cond_8

    :cond_7
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_8

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_8
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    iput-wide p2, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_1
    return v1
.end method

.method public final checkFocus(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureCompleted - missing android.control.afState !"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne p0, v1, :cond_2

    invoke-static {p1, v2, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p0, v1, :cond_3

    invoke-static {p1, v2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p0, v1, :cond_4

    move p0, v2

    goto :goto_0

    :cond_4
    move p0, v0

    :goto_0
    invoke-static {p1, v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    return v2
.end method

.method public final checkFocusTimeout(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v2, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFocusTimeoutDurationFlash:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Lcom/motorola/camera/mcf/Mcf$8;

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V
    .locals 12

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v5, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v5, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz v1, :cond_d

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v9, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-nez v9, :cond_4

    iget-object v9, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move v9, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v3

    :goto_3
    and-int/2addr v0, v9

    iget-object v9, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    :goto_4
    move v1, v3

    goto :goto_6

    :cond_6
    iget-object v9, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    :goto_5
    move v1, v4

    goto :goto_6

    :cond_a
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v10, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    invoke-virtual {v11}, Lcom/motorola/camera/fsm/RequestBuilders;->getPreviewBuilders()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v1, v6}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v10, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    invoke-virtual {p0, v10, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_c
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_6
    and-int/2addr v0, v1

    goto :goto_7

    :cond_d
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6

    :goto_7
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz v1, :cond_10

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    move v1, v4

    goto :goto_9

    :cond_f
    :goto_8
    move v1, v3

    :goto_9
    and-int/2addr v0, v1

    goto :goto_a

    :cond_10
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :goto_a
    iput-boolean v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    if-eqz v0, :cond_11

    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Lcom/motorola/camera/mcf/Mcf$8;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    :cond_11
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-boolean v6, v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v7, v7, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    sget-boolean v8, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v8, :cond_12

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lockTimeout for camera: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "FocusExposureLockRunnable"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-nez v6, :cond_14

    if-eqz v7, :cond_13

    goto :goto_c

    :cond_13
    move v5, v4

    goto :goto_d

    :cond_14
    :goto_c
    move v5, v3

    :goto_d
    and-int/2addr v1, v5

    goto :goto_b

    :cond_15
    if-eqz v1, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-eq v0, v3, :cond_18

    :cond_17
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_18
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getFocusBundle(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    iput-boolean v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    iput v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    :cond_19
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FocusExposureLockRunnable"

    return-object p0
.end method

.method public final processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    iget-boolean v1, v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotReceived:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    const/4 v7, 0x4

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean p0, v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    if-eqz p0, :cond_0

    iget p0, v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    iput p0, v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    iget p2, v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutFrames:I

    if-lt p0, p2, :cond_0

    const-string p0, "FocusExposureLockRunnable"

    const-string p2, "Lock focus time out"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object p0, v3, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getFocusBundle(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v3, p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    iget-object p0, v3, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {p2, v1, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean p1, v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    const/4 p0, 0x0

    iput-boolean p0, v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    iput p0, v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    :cond_0
    return-void
.end method

.method public processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v0, :cond_0

    if-eqz v4, :cond_0

    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotPartialReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    const/4 v6, 0x3

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4
    iput-boolean v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    .line 5
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    .line 7
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v7

    iput-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v7, 0x6

    .line 8
    iget v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v8, v7, :cond_0

    const/16 v7, 0x32

    goto :goto_0

    .line 9
    :cond_0
    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    .line 10
    :goto_0
    iput v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutFrames:I

    .line 11
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 12
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 14
    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 15
    iget-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v12, :cond_2

    if-ne v8, v10, :cond_2

    const-string v13, "FOCUS_LOCK_SENT"

    .line 16
    invoke-virtual {v9, v13, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 17
    const-string v2, "FOCUS_TIMEOUT"

    invoke-virtual {v9, v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 18
    const-string v3, "FOCUS_LOCKED"

    invoke-virtual {v9, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_20

    .line 19
    :cond_1
    invoke-virtual {v0, v1, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    return-void

    .line 20
    :cond_2
    invoke-static {v8}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 21
    invoke-virtual {v0, v1, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    goto/16 :goto_a

    .line 22
    :pswitch_0
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    .line 23
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 24
    iput-boolean v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto/16 :goto_a

    .line 25
    :pswitch_1
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    .line 26
    iput-boolean v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 27
    iput-boolean v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto :goto_a

    :pswitch_2
    if-nez v12, :cond_4

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v13, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v13, v10

    .line 28
    :goto_2
    iput-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v12, :cond_5

    if-nez v7, :cond_5

    move v13, v10

    goto :goto_3

    :cond_5
    move v13, v4

    .line 29
    :goto_3
    iput-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-nez v12, :cond_7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move v7, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v10

    .line 30
    :goto_5
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    goto :goto_a

    :pswitch_3
    if-nez v12, :cond_9

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    move v13, v4

    goto :goto_7

    :cond_9
    :goto_6
    move v13, v10

    .line 31
    :goto_7
    iput-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v12, :cond_a

    if-nez v7, :cond_a

    .line 32
    iget-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-eqz v13, :cond_a

    move v13, v10

    goto :goto_8

    :cond_a
    move v13, v4

    :goto_8
    iput-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-nez v13, :cond_b

    if-nez v12, :cond_c

    :cond_b
    if-eqz v7, :cond_d

    :cond_c
    move v7, v10

    goto :goto_9

    :cond_d
    move v7, v4

    .line 33
    :goto_9
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 34
    :goto_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 35
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 36
    :cond_e
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    const-string v13, "ae_mode_manual_changed"

    if-eqz v7, :cond_f

    .line 37
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 38
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v14

    .line 39
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-nez v16, :cond_f

    .line 40
    invoke-virtual {v7, v15, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v14, v15, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v9, v13, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f
    if-nez v12, :cond_10

    .line 43
    invoke-virtual {v9, v13, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 44
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 45
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 46
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v9, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v7, v9, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 48
    :cond_10
    invoke-static {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;-><init>()V

    .line 50
    new-instance v7, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v9, 0x16

    const/4 v13, 0x0

    invoke-direct {v7, v0, v3, v9, v13}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Lcom/motorola/camera/mcf/Mcf$8;

    .line 51
    invoke-virtual {v6, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v0, v1, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    .line 53
    invoke-virtual {v0, v1, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    .line 54
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v13, v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v7, :cond_12

    if-eqz v12, :cond_12

    if-ne v10, v8, :cond_12

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v7, v14, :cond_11

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v7, v14, :cond_12

    .line 55
    :cond_11
    invoke-virtual {v13, v9}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto :goto_b

    .line 56
    :cond_12
    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    .line 57
    :goto_b
    invoke-virtual {v0, v1, v10, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V

    .line 58
    iget-object v5, v13, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    .line 59
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 60
    sget-object v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz v13, :cond_13

    .line 61
    invoke-interface {v5, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 62
    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 63
    invoke-virtual {v6, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto :goto_c

    :cond_13
    move v3, v10

    .line 64
    :goto_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v5

    if-nez v5, :cond_14

    move v2, v4

    goto/16 :goto_10

    .line 65
    :cond_14
    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v5

    .line 66
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;-><init>()V

    .line 67
    new-instance v11, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v4, 0x16

    const/4 v2, 0x0

    invoke-direct {v11, v0, v5, v4, v2}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v11, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Lcom/motorola/camera/mcf/Mcf$8;

    .line 68
    invoke-virtual {v6, v5, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v10, v8, :cond_15

    .line 69
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 70
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    const/4 v2, 0x2

    if-ne v2, v8, :cond_17

    .line 71
    :cond_16
    invoke-virtual {v6, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    const/4 v2, 0x0

    goto :goto_10

    :cond_17
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v13, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    move-result v4

    .line 73
    invoke-virtual {v0, v1, v13, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    move-result v11

    or-int v2, v4, v11

    .line 74
    iget-boolean v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    or-int/2addr v2, v4

    .line 75
    iget-object v11, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v4, :cond_19

    if-eqz v12, :cond_19

    if-ne v10, v8, :cond_19

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v4, v10, :cond_18

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v4, v10, :cond_18

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v4, v10, :cond_18

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v4, v10, :cond_19

    .line 76
    :cond_18
    invoke-virtual {v11, v9}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :goto_e
    const/4 v4, 0x0

    goto :goto_f

    .line 77
    :cond_19
    invoke-virtual {v0, v1, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_e

    .line 78
    :goto_f
    invoke-virtual {v0, v1, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V

    .line 79
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->STREAM_MONO_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz v12, :cond_1a

    const/4 v9, 0x1

    if-ne v9, v8, :cond_1a

    .line 80
    invoke-virtual {v11, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    const/4 v2, 0x1

    .line 81
    :cond_1a
    iget-object v9, v11, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    .line 82
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 83
    invoke-interface {v9, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 84
    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 85
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 86
    invoke-virtual {v6, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 87
    :cond_1b
    :goto_10
    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    if-nez v3, :cond_1c

    if-nez v2, :cond_1c

    goto :goto_11

    .line 88
    :cond_1c
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    const/4 v9, 0x1

    if-eqz v3, :cond_1d

    .line 89
    invoke-virtual {v0, v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_1d
    if-eqz v2, :cond_1e

    const/4 v4, 0x0

    .line 90
    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 91
    :cond_1e
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz v3, :cond_1f

    .line 92
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 93
    invoke-static {v1, v9, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 95
    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-virtual {v0, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_1f
    if-eqz v2, :cond_20

    .line 97
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    const/4 v4, 0x0

    .line 98
    invoke-static {v1, v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 100
    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_20
    return-void

    .line 102
    :cond_21
    :goto_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 103
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 104
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 105
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 106
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 107
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 108
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 109
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_12

    :cond_22
    const/4 v9, 0x1

    goto :goto_13

    :cond_23
    :goto_12
    const/4 v9, 0x1

    if-eqz v12, :cond_24

    if-eq v8, v9, :cond_25

    .line 110
    :cond_24
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 111
    :cond_25
    :goto_13
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 112
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v7, 0x0

    .line 113
    invoke-virtual {v0, v1, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    .line 114
    iput-boolean v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 7

    invoke-static {p2}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    iget-object v5, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "VIDEO_RECORDING"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v2, v1, p2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabIhc(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_3
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/RequestBuilders;->getPreviewBuilders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;

    invoke-direct {v4, p0, v1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;

    invoke-direct {v0, p0, v1, v4, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mHighSpeedRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mHighSpeedRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;

    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    move-object v2, v1

    new-instance v1, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v6, 0x3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    move-object v2, v1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    move-object v2, v1

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocusTimeout(Ljava/lang/String;)V

    return-void
.end method

.method public final sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->STREAM_MONO_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V
    .locals 2

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z
    .locals 8

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return v3

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v4

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isHalZslEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->NO_REPROC_PRO_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v4, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return v3

    :cond_1
    if-ne v1, v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->UNLOCK_AE_FOR_LONG_EXP:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return v3

    :cond_2
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    :goto_0
    invoke-virtual {p2, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v5, v5, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v4, v0

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v4, v4, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    move v4, v0

    :cond_7
    if-eqz v4, :cond_9

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    :goto_4
    invoke-virtual {p2, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return v0

    :cond_9
    invoke-virtual {p2, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return v3
.end method

.method public final setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v1, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {v3}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v13

    monitor-enter v12

    :try_start_0
    iget-object v14, v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v14, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    const/4 v14, -0x1

    if-eqz v13, :cond_0

    iget v13, v13, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_19

    :cond_0
    move v13, v14

    :goto_0
    monitor-exit v12

    const/4 v12, 0x5

    const/4 v15, 0x4

    if-eq v13, v15, :cond_1

    if-eq v13, v12, :cond_1

    if-ne v13, v14, :cond_3

    :cond_1
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v4

    monitor-enter v13

    :try_start_1
    iget-object v14, v13, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v14, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v4, :cond_2

    iget-boolean v4, v4, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_18

    :cond_2
    const/4 v4, 0x0

    :goto_1
    monitor-exit v13

    if-nez v4, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const/4 v13, 0x2

    if-nez v4, :cond_8

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v3

    monitor-enter v14

    :try_start_2
    iget-object v12, v14, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v12, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v3, :cond_4

    iget v3, v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_4
    const/4 v3, -0x1

    :goto_3
    monitor-exit v14

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v12

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v14

    if-nez v14, :cond_6

    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lcom/motorola/camera/mcf/Mcf;->FOCUS_PASSIVE_FOCUSED_GRANTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v12, v14}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    move v12, v7

    :goto_4
    if-ne v3, v13, :cond_7

    if-eqz v12, :cond_7

    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v3, v7, :cond_7

    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFocusLockNeeded()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    :goto_5
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_8
    move v3, v7

    :goto_6
    iget-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v12, :cond_9

    if-nez v3, :cond_9

    move v3, v7

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    xor-int/lit8 v14, v12, 0x1

    move/from16 v17, v13

    iget v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v13, v7, :cond_a

    if-nez v12, :cond_a

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "FOCUS_LOCK_SENT"

    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    :cond_a
    iget v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v13, 0x7

    if-eq v12, v15, :cond_c

    if-ne v12, v13, :cond_b

    goto :goto_9

    :cond_b
    const/4 v15, 0x0

    :goto_8
    const/4 v13, 0x5

    goto :goto_a

    :cond_c
    :goto_9
    move v15, v7

    goto :goto_8

    :goto_a
    if-ne v12, v13, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isAutoFocus()Z

    move-result v12

    if-eqz v12, :cond_d

    move v12, v7

    goto :goto_b

    :cond_d
    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocus()Z

    move-result v13

    if-nez v3, :cond_e

    if-eqz v14, :cond_f

    :cond_e
    if-nez v13, :cond_10

    :cond_f
    if-nez v15, :cond_10

    if-eqz v12, :cond_1c

    :cond_10
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v11, v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_11
    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v3, :cond_15

    if-eqz v15, :cond_12

    invoke-virtual {v10, v6, v8, v7}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->triggerAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_d

    :cond_12
    monitor-enter v10

    :try_start_4
    iget v3, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->handleAfModeUninitialized()V

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_e

    :cond_13
    :goto_c
    invoke-virtual {v10, v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v6, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v10

    :goto_d
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v3, v7, :cond_14

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "FOCUS_LOCK_SENT"

    invoke-virtual {v3, v4, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-direct {v3, v0, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto/16 :goto_17

    :goto_e
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_15
    if-eqz v15, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v10, v6, v8, v3}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->triggerAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_10

    :cond_16
    monitor-enter v10

    :try_start_6
    iget v3, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_17

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->handleAfModeUninitialized()V

    goto :goto_f

    :catchall_4
    move-exception v0

    goto :goto_15

    :cond_17
    :goto_f
    invoke-virtual {v10, v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v6, v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit v10

    :goto_10
    if-eqz v4, :cond_19

    monitor-enter v10

    :try_start_7
    iget-object v1, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v1, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v1, :cond_18

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_11

    :catchall_5
    move-exception v0

    goto :goto_12

    :cond_18
    :goto_11
    monitor-exit v10

    goto :goto_13

    :goto_12
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :cond_19
    :goto_13
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v3, 0x6

    if-eq v3, v0, :cond_1a

    const/4 v3, 0x7

    if-eq v3, v0, :cond_1a

    move v4, v7

    goto :goto_14

    :cond_1a
    const/4 v4, 0x0

    :goto_14
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz v4, :cond_1b

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_17

    :goto_15
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_1c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/16 v16, 0x0

    aget v1, v1, v16

    iput v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    goto :goto_16

    :cond_1d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    :goto_16
    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :goto_17
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v7

    return v0

    :goto_18
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :goto_19
    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public final setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p3, v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p3, v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_1
    return-void
.end method

.method public final setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z
    .locals 8

    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p3, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, p3, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v5, 0x4

    if-ne p1, v5, :cond_2

    :cond_1
    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iget v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v5, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p2, v6}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return v0

    :cond_3
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_TIME_SENSITIVITY_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAwbSpeed:F

    const/4 v0, 0x0

    cmpl-float v5, p1, v0

    if-lez v5, :cond_7

    iget-boolean v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_CONV_SPEED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v5, v2, v7}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v5, v4, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getHardwareLevel()I

    move-result p0

    if-ne p0, p3, :cond_8

    goto :goto_4

    :cond_8
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_9

    :goto_4
    invoke-virtual {p2, v6}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto :goto_6

    :cond_9
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_CHECK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getHardwareLevel()I

    move-result p0

    if-ne p0, p3, :cond_b

    goto :goto_5

    :cond_b
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p2, v6}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :goto_6
    iget-object p0, p2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method public final shouldStreamSlaveInLpm()Z
    .locals 2

    invoke-super {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->shouldStreamSlaveInLpm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FocusExposureLockRunnable{mLockType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "null"

    goto :goto_0

    :pswitch_0
    const-string v1, "SLOW_MOTION"

    goto :goto_0

    :pswitch_1
    const-string v1, "PANORAMA"

    goto :goto_0

    :pswitch_2
    const-string v1, "ROI_LOCK"

    goto :goto_0

    :pswitch_3
    const-string v1, "TTF_TRIGGER"

    goto :goto_0

    :pswitch_4
    const-string v1, "ROI_DRAG"

    goto :goto_0

    :pswitch_5
    const-string v1, "MS_CAPTURE"

    goto :goto_0

    :pswitch_6
    const-string v1, "CAPTURE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFocusLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExposureLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPreTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeoutChecking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeoutFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFlashExpected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSceneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
