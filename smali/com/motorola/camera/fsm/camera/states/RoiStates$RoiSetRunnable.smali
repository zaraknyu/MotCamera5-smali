.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "SourceFile"


# instance fields
.field public final mAutoMode:Z

.field public final mFocusModeChangedListener:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;

.field public final mForceSetRoi:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 3
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    .line 6
    const-string v6, "ROI_INNER"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 7
    const-string v7, "LOCK_FOCUS_STATE"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 8
    const-string v8, "ENABLE"

    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 9
    iget-boolean v9, v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    const/4 v10, 0x0

    const/4 v11, 0x2

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-nez v9, :cond_4

    if-eqz v6, :cond_4

    if-eqz v5, :cond_0

    if-eqz v7, :cond_4

    .line 10
    :cond_0
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 11
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 12
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 14
    invoke-static {v2, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 15
    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 16
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 18
    :goto_0
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 21
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v4, v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 23
    invoke-static {v2, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 24
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 25
    new-array v2, v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 26
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 27
    invoke-static {v1, v2, v10}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 28
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 31
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v11

    .line 32
    invoke-static {v3, v4, v5, v2}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->addRoi(JII)V

    goto/16 :goto_9

    .line 33
    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->cancelRoi()V

    goto/16 :goto_9

    .line 34
    :cond_4
    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 36
    :cond_5
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 37
    :goto_1
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    .line 39
    const-string v4, "LOCATION"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 40
    iget v5, v4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    .line 41
    iget v6, v4, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    .line 42
    const-string v7, "ROI_WIDTH"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 43
    const-string v9, "ROI_HIGHT"

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 44
    const-string v12, "ROI_WEIGHT"

    invoke-virtual {v2, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 45
    new-instance v13, Lcom/motorola/camera/PreviewSize;

    const-string v14, "SURFACE_WIDTH"

    .line 46
    invoke-virtual {v2, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "SURFACE_HEIGHT"

    invoke-virtual {v2, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 47
    new-instance v14, Landroid/graphics/PointF;

    iget v15, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v14, v15, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v4, "ROI_TARGET_LOCATION"

    invoke-virtual {v2, v4, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    const-string v4, "ROI_TARGET_WIDTH"

    invoke-virtual {v2, v4, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v4, "ROI_TARGET_HIGHT"

    invoke-virtual {v2, v4, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v4, "ROI_TARGET_WEIGHT"

    invoke-virtual {v2, v4, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v4

    const/4 v14, 0x1

    if-eqz v4, :cond_6

    :goto_2
    move v2, v14

    goto :goto_3

    .line 52
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 53
    const-string v4, "ROI_DRAG"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 54
    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v10

    :goto_3
    int-to-float v4, v5

    int-to-float v5, v6

    .line 55
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    iget v8, v13, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    const/high16 v15, -0x40000000    # -2.0f

    div-float/2addr v8, v15

    iget v15, v13, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v6, v8, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v15, -0x40800000    # -1.0f

    .line 57
    invoke-virtual {v6, v8, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    move/from16 v17, v8

    .line 58
    new-array v8, v11, [F

    aput v4, v8, v10

    aput v5, v8, v14

    .line 59
    new-array v4, v11, [F

    .line 60
    invoke-virtual {v6, v4, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 61
    new-instance v5, Landroid/graphics/PointF;

    aget v6, v4, v10

    aget v4, v4, v14

    invoke-direct {v5, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 62
    iget v4, v5, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v3, v4

    int-to-float v4, v5

    .line 63
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v5

    .line 64
    new-instance v6, Landroid/graphics/RectF;

    .line 65
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 66
    iget-object v8, v8, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 67
    invoke-direct {v6, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 68
    new-instance v8, Landroid/graphics/PointF;

    move/from16 v18, v14

    iget v14, v13, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v14, v14

    iget v13, v13, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v13, v13

    invoke-direct {v8, v14, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 69
    iget v13, v6, Landroid/graphics/RectF;->left:F

    iget v14, v8, Landroid/graphics/PointF;->x:F

    div-float v14, v14, v16

    sub-float/2addr v13, v14

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    sub-float v11, v8, v11

    div-float v20, v8, v16

    sub-float v11, v11, v20

    iget v15, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v15, v14

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v6

    sub-float v8, v8, v20

    .line 70
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v13, v11, v15, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    .line 72
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    neg-float v13, v8

    neg-float v14, v11

    .line 73
    invoke-virtual {v6, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    sub-float/2addr v3, v8

    sub-float/2addr v4, v11

    .line 74
    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v13, v8, v11

    if-gez v13, :cond_a

    iget v13, v6, Landroid/graphics/RectF;->top:F

    iget v14, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v15, v13, v14

    if-lez v15, :cond_a

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_a

    cmpg-float v8, v3, v11

    if-gtz v8, :cond_a

    cmpg-float v8, v4, v13

    if-gtz v8, :cond_a

    cmpl-float v8, v4, v14

    if-ltz v8, :cond_a

    .line 75
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 76
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 77
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v11, v10, v10, v13, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 80
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    .line 81
    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 82
    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_8

    const/high16 v13, -0x40800000    # -1.0f

    :goto_4
    const/high16 v14, -0x40800000    # -1.0f

    goto :goto_5

    :cond_8
    move/from16 v13, v17

    goto :goto_4

    .line 83
    :goto_5
    invoke-virtual {v8, v14, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 84
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v13

    .line 85
    invoke-static {v13, v5}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v5

    int-to-float v5, v5

    .line 86
    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 87
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 88
    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v5, :cond_9

    .line 89
    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    add-int/lit16 v5, v5, -0x168

    .line 90
    rem-int/lit16 v5, v5, 0x168

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 91
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 92
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float/2addr v5, v13

    .line 93
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    .line 94
    iget v14, v6, Landroid/graphics/RectF;->top:F

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v6

    div-float/2addr v13, v14

    goto :goto_6

    .line 95
    :cond_9
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 96
    iget v13, v6, Landroid/graphics/RectF;->top:F

    iget v14, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v14

    div-float/2addr v5, v13

    .line 97
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    .line 98
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v13, v6

    .line 99
    :goto_6
    invoke-virtual {v8, v5, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 100
    iget v5, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v16

    add-float/2addr v6, v5

    iget v5, v11, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 101
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v16

    add-float/2addr v11, v5

    .line 102
    invoke-virtual {v8, v6, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v5, 0x2

    .line 103
    new-array v6, v5, [F

    aput v3, v6, v10

    aput v4, v6, v18

    .line 104
    new-array v3, v5, [F

    .line 105
    invoke-virtual {v8, v3, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 106
    new-instance v4, Landroid/graphics/PointF;

    aget v5, v3, v10

    aget v3, v3, v18

    invoke-direct {v4, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_7

    .line 107
    :cond_a
    new-instance v4, Landroid/graphics/PointF;

    const/high16 v14, -0x40800000    # -1.0f

    invoke-direct {v4, v14, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 108
    :goto_7
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 109
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 110
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 111
    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 112
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 113
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 114
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v19, 0x2

    aget v5, v5, v19

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_b

    div-float v8, v17, v3

    cmpl-float v3, v8, v5

    if-ltz v3, :cond_b

    const/16 v3, 0x1f4

    goto :goto_8

    :cond_b
    const/16 v3, 0x190

    .line 115
    :goto_8
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 116
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 117
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 118
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 119
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v7, v10, v10, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 120
    iget v6, v4, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v6, v8

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v8

    .line 121
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 122
    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v4, v8

    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v8

    .line 123
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 124
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 125
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 126
    iget v4, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v14

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 127
    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 128
    new-instance v13, Landroid/hardware/camera2/params/MeteringRectangle;

    move/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    filled-new-array {v13}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 129
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 130
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 131
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Landroid/graphics/Point;

    const/16 v19, 0x2

    div-int/lit8 v16, v16, 0x2

    add-int v6, v16, v14

    div-int/lit8 v17, v17, 0x2

    add-int v7, v17, v15

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 132
    invoke-static {v1, v3, v2}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    aget-object v2, v3, v10

    .line 134
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-static {v4, v5, v3, v2}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->addRoi(JII)V

    .line 136
    :goto_9
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 137
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;

    .line 138
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    const-string v6, "VIDEO_RECORDING"

    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ROI_DRAG"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    const/4 v6, 0x2

    if-eqz p0, :cond_7

    if-nez v3, :cond_7

    if-nez v5, :cond_7

    monitor-enter v2

    :try_start_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-static {p0, v4}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    :try_start_1
    iput v4, v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v3, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v7, v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result v3

    if-ne v3, v6, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    move v3, v0

    :goto_4
    if-eqz v3, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_6
    monitor-exit v2

    return-void

    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    monitor-enter v2

    :try_start_3
    iget p0, v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I

    const/4 v3, -0x1

    if-eq p0, v3, :cond_8

    iput p0, v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_8
    :goto_6
    invoke-virtual {v2, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-ne p0, v6, :cond_9

    move v0, v4

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :cond_a
    monitor-exit v2

    return-void

    :goto_8
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
