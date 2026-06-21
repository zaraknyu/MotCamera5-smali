.class public final Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public mShotStartTime:J


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->sendError()V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 11

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 4
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "SEQ_ID"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    .line 7
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 9
    sget-boolean v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkCshotSupport:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkSpeedUpSupported:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0, v3, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCShotEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SNAP_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 15
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;

    .line 16
    iget v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;->mCurrentExpTime:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v2, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v2, v4, v2

    .line 17
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v5, 0x1e

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 18
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 19
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 20
    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float v5, v4, v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_1

    .line 21
    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRatesLvl1:[F

    invoke-static {p3}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p3

    aget p3, v5, p3

    goto :goto_1

    .line 22
    :cond_1
    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRates:[F

    invoke-static {p3}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p3

    aget p3, v5, p3

    :goto_1
    int-to-byte v5, v7

    .line 23
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->DISABLE_UW_DC_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v8, v1, v3, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 24
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v5}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    .line 26
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 27
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    goto :goto_2

    :cond_2
    move v0, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v7

    :goto_3
    if-eqz v0, :cond_4

    int-to-float p3, v2

    .line 28
    :cond_4
    sget-object v9, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    .line 29
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    .line 30
    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 31
    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_6

    move v9, v7

    goto :goto_5

    :cond_6
    :goto_4
    move v9, v8

    .line 32
    :goto_5
    invoke-static {v9}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 33
    invoke-virtual {v9}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v9

    if-nez v9, :cond_7

    if-nez v0, :cond_7

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p3, v0

    :cond_7
    int-to-float v0, v2

    div-float v2, v0, p3

    float-to-int v2, v2

    rem-float/2addr v0, p3

    int-to-float p3, v2

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    goto :goto_6

    :cond_8
    move v4, v5

    :goto_6
    add-float/2addr p3, v4

    float-to-int p3, p3

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    div-int/lit8 p3, p3, 0x4

    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 36
    :cond_9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    move v10, v8

    :goto_7
    if-ge v10, p3, :cond_e

    if-nez v10, :cond_c

    .line 38
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-static {v1, v3}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->appendAppInfoToMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 40
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 41
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 43
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 44
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    .line 45
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    .line 46
    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTargetWithPhysicalCamera(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    goto :goto_8

    .line 47
    :cond_a
    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v3, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 48
    :goto_8
    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v3, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 49
    invoke-static {v1, v3, v8}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZslCropMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 50
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 51
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 52
    :cond_b
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 54
    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v3, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 55
    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v3, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 56
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 57
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 58
    :cond_d
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 59
    :cond_e
    sget-boolean p3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p3, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->mShotStartTime:J

    .line 60
    :cond_f
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 61
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 62
    check-cast p3, Landroid/util/Size;

    .line 63
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    mul-int/2addr p3, v0

    mul-int/2addr p3, v6

    .line 64
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;

    invoke-direct {v0, p0, p3, p1, v1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;ILcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/lang/String;)V

    .line 65
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-static {v1, v9, p0, v0, p1}, Lcom/google/zxing/Result;->setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendError()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v3, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
