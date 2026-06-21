.class public final Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public mBaseZoom:F

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mDragNumber:I

.field public mDragOffset:F

.field public mFirstFrame:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInMagneticRange:Z

.field public mMagneticValues:[I

.field public mMagneticX:[F

.field public mPreZoomRatio:F

.field public mSegments:Ljava/util/ArrayList;

.field public mZoomCompleteFrameNum:J

.field public mZoomCompleted:Z

.field public mZoomState:I

.field public mZoomTarget:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->resetState()V

    return-void
.end method

.method public static isEqual(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 16

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomRect(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING_AUTO_MODE:Z

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v10, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v11, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v12, p1

    invoke-static {v12, v10, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoomRect(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    sget-object v10, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v10, v10, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    invoke-static {v11}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v13

    aget-boolean v10, v10, v13

    if-eqz v10, :cond_3

    const/4 v10, 0x2

    goto :goto_2

    :cond_3
    move v10, v3

    :goto_2
    iget v13, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    iget-object v14, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v15, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v10, v13, v15, v0, v14}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(IILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v15, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v10, v13, v14, v15}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v10

    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v13, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v14, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v10, v13, v14, v15}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_3

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v13

    if-eqz v13, :cond_6

    if-nez v10, :cond_6

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v13, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v14, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v10, v13, v14, v15}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_6
    :goto_3
    move/from16 v10, p0

    if-eqz v6, :cond_8

    invoke-static {v10, v11}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableAutoFocusTracking(FLcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v11, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v13, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v14, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v14, v11, v13, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    if-nez v7, :cond_8

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v11, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v13, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v14, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v14, v11, v13, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v11

    const-string v13, "ZOOM_JUMP_HINT"

    invoke-virtual {v11, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v14, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v15, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v11, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_CONTROL_ZOOM_BUTTON_FLAG_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v14, v15, v13}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v3, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v13, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v14, "ZOOM_JUMP_RATIO_RANGE"

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v11

    sget-object v14, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_CONTROL_ZOOM_BUTTON_RATIO_RANGE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v14, v3, v13, v11}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v3, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSettingsOverrideZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    iget-object v3, v9, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v9, 0x1

    invoke-static {v3, v9}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSettingsOverrideZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_5
    move v3, v9

    goto/16 :goto_1

    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO_SUPPORT_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSSupportedLaunchType()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mAutoMacroFallbackZoomRange:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    aget v2, v2, v1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SAT_FALLBACK_IS_MACRO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mTeleMacroZoomRange:[F

    aget v5, v4, v3

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_3

    aget v4, v4, v1

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v0, v4

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mTeleMacroMinFocusDistance:I

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;

    invoke-interface {v3, v2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;->onSATFallback(ZZ)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v0, 0x16

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetDragData(FFZ)V
    .locals 4

    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mPreZoomRatio:F

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragOffset:F

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragOffset:F

    :goto_0
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mArcZoomBarSegments:[F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    array-length p3, p1

    const/4 v0, 0x1

    if-le p3, v0, :cond_5

    move p3, v0

    :goto_1
    array-length v1, p1

    sub-int/2addr v1, v0

    if-ge p3, v1, :cond_5

    new-instance v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    aget v2, p1, p3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManualUw(F)F

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getTeleSegmentMin()F

    move-result v3

    div-float/2addr v2, v3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->shouldDoBackMainZoomMapping(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManualWide(F)F

    move-result v2

    :cond_4
    :goto_2
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v2, v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mZoomRatio:F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    return-void
.end method

.method public final resetState()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->isKnifeSwitchState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    iput v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleteFrameNum:J

    return-void
.end method

.method public final zoom(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eqz p3, :cond_0

    move-object/from16 v3, p3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_41

    const-string v8, "VIDEO_RECORDING"

    invoke-virtual {v3, v8, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v9

    or-int/2addr v8, v9

    :cond_1
    const-string v9, "TYPE"

    invoke-virtual {v3, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "VALUE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    const-string v11, "ZOOM_SEG_UNIT"

    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2

    const/16 v11, 0x87

    :cond_2
    const-string v12, "START_ZOOM"

    invoke-virtual {v3, v12, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v13

    if-nez v13, :cond_3

    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4, v14, v7}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->resetDragData(FFZ)V

    :goto_1
    invoke-virtual {v3, v12, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    if-eqz v9, :cond_41

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v9, v7, :cond_5

    iget v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragOffset:F

    sub-float/2addr v10, v3

    :cond_5
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v3

    invoke-static {v2, v5}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v4

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v8, :cond_6

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_6
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithUw()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->disableCameraTypeIfActivePhotoOn(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v7

    goto :goto_2

    :cond_7
    move v4, v5

    :goto_2
    invoke-static {v2, v4}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithTele()Z

    move-result v12

    if-eqz v12, :cond_8

    sget-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v12}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v12

    goto :goto_3

    :cond_8
    sget-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v12}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v12

    :cond_9
    :goto_3
    move/from16 p3, v13

    move/from16 v16, v14

    goto/16 :goto_c

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v15

    const v16, 0x3dcccccd    # 0.1f

    if-eqz v15, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v15

    if-eqz v15, :cond_12

    sget-object v15, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v18

    if-eqz v15, :cond_b

    invoke-static/range {v18 .. v18}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v19

    if-eqz v19, :cond_c

    goto :goto_4

    :cond_b
    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v19

    if-eqz v19, :cond_c

    :goto_4
    sget-object v19, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static/range {v19 .. v19}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v19

    if-eqz v19, :cond_c

    move/from16 v19, v7

    goto :goto_5

    :cond_c
    move/from16 v19, v5

    :goto_5
    sget-object v20, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static/range {v20 .. v20}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v20

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v21

    if-eqz v21, :cond_d

    if-nez v20, :cond_e

    :cond_d
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v20

    if-eqz v20, :cond_f

    if-eqz v19, :cond_f

    :cond_e
    sub-float v4, v4, v16

    :cond_f
    if-eqz v15, :cond_10

    invoke-static/range {v18 .. v18}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v15

    goto :goto_6

    :cond_10
    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v15

    :goto_6
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v16

    if-nez v16, :cond_11

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v16

    if-eqz v16, :cond_9

    if-eqz v15, :cond_9

    :cond_11
    add-float/2addr v12, v13

    goto :goto_3

    :cond_12
    sget-object v15, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v15, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithUw()Z

    move-result v17

    if-nez v17, :cond_14

    :cond_13
    move/from16 p3, v13

    goto :goto_7

    :cond_14
    move/from16 p3, v13

    goto :goto_8

    :goto_7
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v13, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v13

    if-eqz v13, :cond_15

    :goto_8
    sub-float v4, v4, v16

    :cond_15
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithUw()Z

    move-result v13

    if-eqz v13, :cond_16

    move v13, v7

    goto :goto_9

    :cond_16
    move v13, v5

    :goto_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v16

    if-eqz v16, :cond_17

    move/from16 v16, v14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCaptureSensorCombination()Ljava/util/HashMap;

    move-result-object v14

    if-eqz v14, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    and-int/2addr v13, v5

    goto :goto_a

    :cond_17
    move/from16 v16, v14

    :cond_18
    :goto_a
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithTele()Z

    move-result v5

    if-eqz v5, :cond_19

    move v5, v7

    goto :goto_b

    :cond_19
    const/4 v5, 0x0

    :goto_b
    if-nez v13, :cond_1a

    if-eqz v5, :cond_1b

    :cond_1a
    add-float v12, v12, p3

    :cond_1b
    :goto_c
    if-eqz v8, :cond_1e

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getTeleSegmentMin()F

    move-result v3

    mul-float/2addr v4, v3

    mul-float/2addr v12, v3

    goto :goto_e

    :cond_1c
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithUw()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v4

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v3

    if-nez v3, :cond_1d

    move/from16 v3, p3

    goto :goto_d

    :cond_1d
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    :goto_d
    const v5, 0x3c23d70a    # 0.01f

    sub-float v12, v3, v5

    :cond_1e
    :goto_e
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1f

    int-to-float v3, v11

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    neg-float v5, v10

    div-float/2addr v5, v3

    sub-float v5, v5, p3

    float-to-double v13, v5

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v21

    mul-double v21, v21, v13

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    mul-double v13, v13, v19

    iget v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    float-to-double v6, v3

    div-double/2addr v13, v6

    double-to-float v3, v13

    invoke-static {v12, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_f

    :cond_1f
    move/from16 v3, v16

    :goto_f
    cmpl-float v4, v3, v16

    if-nez v4, :cond_20

    iget v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    goto :goto_10

    :cond_20
    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result v3

    :goto_10
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x3

    const v11, 0x3d4ccccd    # 0.05f

    const/16 v12, 0x8

    if-eqz v4, :cond_32

    const/4 v8, 0x1

    if-ne v9, v8, :cond_2f

    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result v4

    iget v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mPreZoomRatio:F

    cmpl-float v13, v4, v9

    if-lez v13, :cond_21

    const/4 v9, 0x2

    goto :goto_11

    :cond_21
    cmpg-float v9, v4, v9

    if-gez v9, :cond_22

    move v9, v7

    goto :goto_11

    :cond_22
    const/4 v9, 0x1

    :goto_11
    const/4 v13, 0x0

    :goto_12
    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_26

    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    iget v14, v14, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mZoomRatio:F

    mul-float/2addr v14, v11

    iget-object v15, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    iget v15, v15, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mZoomRatio:F

    sub-float v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v14, v17, v14

    if-gez v14, :cond_25

    cmpl-float v4, v15, v16

    if-lez v4, :cond_23

    move v4, v6

    goto :goto_13

    :cond_23
    cmpg-float v4, v15, v16

    if-gez v4, :cond_24

    const/4 v4, 0x2

    goto :goto_13

    :cond_24
    move v4, v7

    goto :goto_13

    :cond_25
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_26
    const/4 v4, 0x1

    :goto_13
    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_2c

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    iget v11, v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mLeftCnt:I

    const/4 v8, 0x1

    add-int/2addr v11, v8

    iput v11, v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mLeftCnt:I

    :cond_27
    :goto_14
    const/4 v5, 0x2

    goto :goto_15

    :cond_28
    const/4 v8, 0x1

    if-ne v4, v6, :cond_27

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    iget v11, v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mRightCnt:I

    add-int/2addr v11, v8

    iput v11, v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mRightCnt:I

    goto :goto_14

    :goto_15
    if-ne v9, v5, :cond_29

    if-ne v4, v6, :cond_29

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    iget v6, v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mLeftCnt:I

    if-ge v6, v12, :cond_2b

    :cond_29
    if-ne v9, v7, :cond_2a

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    iget v4, v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mRightCnt:I

    if-ge v4, v12, :cond_2b

    :cond_2a
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    iget-boolean v4, v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mBlocked:Z

    if-eqz v4, :cond_2e

    :cond_2b
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mBlocked:Z

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mZoomRatio:F

    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result v3

    goto :goto_17

    :cond_2c
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;

    const/4 v7, 0x0

    iput v7, v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mLeftCnt:I

    iput v7, v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mRightCnt:I

    iget-boolean v9, v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mBlocked:Z

    if-eqz v9, :cond_2d

    iput-boolean v7, v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mBlocked:Z

    iget v3, v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$Segment;->mZoomRatio:F

    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result v3

    iget v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragOffset:F

    add-float/2addr v6, v10

    invoke-virtual {v0, v3, v6, v7}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->resetDragData(FFZ)V

    goto :goto_16

    :cond_2e
    :goto_17
    div-float v13, p3, v3

    iput v13, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mPreZoomRatio:F

    :cond_2f
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v4

    if-eqz v4, :cond_31

    div-float v13, p3, v3

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    sget-object v6, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v4, v6

    sget-object v7, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_30

    cmpg-float v7, v13, v6

    if-gez v7, :cond_30

    invoke-static {v13, v6}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->isEqual(FF)Z

    move-result v7

    if-eqz v7, :cond_30

    div-float v3, p3, v6

    goto :goto_18

    :cond_30
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_31

    cmpg-float v6, v13, v4

    if-gez v6, :cond_31

    invoke-static {v13, v4}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->isEqual(FF)Z

    move-result v6

    if-eqz v6, :cond_31

    div-float v3, p3, v4

    :cond_31
    :goto_18
    move v4, v3

    const/4 v7, 0x0

    goto/16 :goto_1f

    :cond_32
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    const/4 v9, 0x0

    if-eqz v4, :cond_38

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    if-nez v10, :cond_34

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v10

    if-eqz v10, :cond_33

    sget-object v10, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v10, v10, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    new-array v13, v6, [F

    sget-object v14, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    sget-object v15, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v17, v10, v14

    sub-float v17, v17, v11

    const/4 v8, 0x1

    aput v17, v13, v8

    aget v14, v10, v14

    add-float/2addr v14, v11

    const/16 v18, 0x0

    aput v14, v13, v18

    aget v14, v10, v15

    sub-float/2addr v14, v11

    aput v14, v13, v7

    aget v10, v10, v15

    add-float/2addr v10, v11

    const/4 v5, 0x2

    aput v10, v13, v5

    goto :goto_19

    :cond_33
    move-object v13, v9

    :goto_19
    iput-object v13, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    :cond_34
    if-eqz v4, :cond_38

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    if-eqz v10, :cond_38

    div-float v13, p3, v3

    sget-object v10, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v4, v10

    sget-object v11, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v4, v11

    const/16 v18, 0x0

    aget v14, v4, v18

    cmpl-float v14, v14, v16

    if-eqz v14, :cond_36

    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    const/4 v8, 0x1

    aget v15, v14, v8

    cmpl-float v15, v13, v15

    if-lez v15, :cond_35

    cmpg-float v15, v13, v10

    if-gez v15, :cond_35

    const/4 v4, 0x1

    goto :goto_1a

    :cond_35
    cmpl-float v10, v13, v10

    if-lez v10, :cond_36

    const/16 v18, 0x0

    aget v10, v14, v18

    cmpg-float v10, v13, v10

    if-gez v10, :cond_36

    const/4 v4, 0x2

    goto :goto_1a

    :cond_36
    const/4 v5, 0x2

    aget v4, v4, v5

    cmpl-float v4, v4, v16

    if-eqz v4, :cond_38

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    aget v10, v4, v7

    cmpl-float v10, v13, v10

    if-lez v10, :cond_37

    cmpg-float v10, v13, v11

    if-gez v10, :cond_37

    move v4, v7

    goto :goto_1a

    :cond_37
    cmpl-float v10, v13, v11

    if-lez v10, :cond_38

    const/4 v5, 0x2

    aget v4, v4, v5

    cmpg-float v4, v13, v4

    if-gez v4, :cond_38

    move v4, v6

    goto :goto_1a

    :cond_38
    const/4 v4, 0x0

    :goto_1a
    if-eqz v4, :cond_40

    iget-boolean v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    if-nez v9, :cond_3b

    iget v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    if-eq v9, v12, :cond_3b

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    if-nez v9, :cond_39

    new-array v9, v6, [I

    iput-object v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    :cond_39
    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    invoke-static {v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v10

    aget v11, v9, v10

    const/4 v8, 0x1

    add-int/2addr v11, v8

    aput v11, v9, v10

    iget v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    add-int/2addr v9, v8

    iput v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    if-ne v9, v12, :cond_3a

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    invoke-static {v9}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda10;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-interface {v9, v10}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v9

    if-eqz v9, :cond_3a

    const/4 v9, 0x1

    goto :goto_1b

    :cond_3a
    const/4 v9, 0x0

    :goto_1b
    iput-boolean v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    :cond_3b
    iget-boolean v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    if-eqz v9, :cond_3f

    sget-object v9, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v9, v9, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    const/4 v8, 0x1

    invoke-static {v8, v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v10

    if-nez v10, :cond_3e

    const/4 v5, 0x2

    invoke-static {v5, v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v10

    if-eqz v10, :cond_3c

    goto :goto_1d

    :cond_3c
    invoke-static {v7, v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-static {v6, v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_31

    :cond_3d
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v9, v3

    :goto_1c
    div-float v3, p3, v3

    goto/16 :goto_18

    :cond_3e
    :goto_1d
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v9, v3

    goto :goto_1c

    :cond_3f
    const/4 v7, 0x0

    goto :goto_1e

    :cond_40
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    iput-object v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    iput v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    :goto_1e
    move v4, v3

    :goto_1f
    invoke-static {v4, v2}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto :goto_20

    :cond_41
    move v7, v5

    :goto_20
    invoke-static {v2, v7}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-static {v3, v2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    const/4 v5, 0x2

    iput v5, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:I

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    return-void
.end method
