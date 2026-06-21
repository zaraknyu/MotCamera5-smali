.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;
.super Lcom/motorola/camera/device/callables/CaptureRequestAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->$r8$classId:I

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/motorola/camera/device/callables/CaptureRequestAdapter;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    return-void
.end method

.method private final onCaptureFailed$com$motorola$camera$fsm$camera$states$runnables$WideSelfieCaptureRequestRunnable$1(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    return-void
.end method

.method private final onCaptureProgressed$com$motorola$camera$fsm$camera$states$runnables$CaptureRequestRunnable$2(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method private final onCaptureProgressed$com$motorola$camera$fsm$camera$states$runnables$PanoPreviewRequestRunnable$1(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method private final onCaptureProgressed$com$motorola$camera$fsm$camera$states$runnables$WideSelfieCaptureRequestRunnable$1(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method private final onCaptureStarted$com$motorola$camera$fsm$camera$states$runnables$PanoPreviewRequestRunnable$1(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    return-void
.end method

.method private final onCaptureStarted$com$motorola$camera$fsm$camera$states$runnables$WideSelfieCaptureRequestRunnable$1(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->$r8$classId:I

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {v3, v4, v6, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v3, "WIDE_SELFIE_FACE_RECT"

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    sget-object v4, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    array-length v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    if-gtz v4, :cond_1

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_1
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    sget v8, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v9, v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v0, v10

    new-array v10, v4, [Landroid/graphics/Rect;

    :goto_2
    if-ge v7, v4, :cond_6

    aget-object v11, v1, v7

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    if-eqz v8, :cond_5

    const/16 v12, 0x5a

    if-eq v8, v12, :cond_4

    const/16 v12, 0xb4

    if-eq v8, v12, :cond_3

    const/16 v12, 0x10e

    if-eq v8, v12, :cond_2

    goto :goto_1

    :cond_2
    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    iget v14, v11, Landroid/graphics/Rect;->top:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    new-instance v15, Landroid/graphics/Rect;

    int-to-float v12, v12

    mul-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    int-to-float v14, v14

    mul-float/2addr v14, v0

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    and-int/lit8 v14, v14, -0x2

    int-to-float v13, v13

    mul-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    and-int/lit8 v13, v13, -0x2

    int-to-float v11, v11

    mul-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    and-int/lit8 v11, v11, -0x2

    invoke-direct {v15, v12, v14, v13, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v15, v10, v7

    goto/16 :goto_3

    :cond_3
    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->left:I

    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    new-instance v15, Landroid/graphics/Rect;

    int-to-float v12, v12

    mul-float/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    int-to-float v13, v13

    mul-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    and-int/lit8 v13, v13, -0x2

    int-to-float v14, v14

    mul-float/2addr v14, v0

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    and-int/lit8 v14, v14, -0x2

    int-to-float v11, v11

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    and-int/lit8 v11, v11, -0x2

    invoke-direct {v15, v12, v13, v14, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v15, v10, v7

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget v13, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget v14, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    iget v15, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v11

    new-instance v11, Landroid/graphics/Rect;

    int-to-float v12, v12

    mul-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    int-to-float v14, v14

    mul-float/2addr v14, v0

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    and-int/lit8 v14, v14, -0x2

    int-to-float v13, v13

    mul-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    and-int/lit8 v13, v13, -0x2

    int-to-float v15, v15

    mul-float/2addr v15, v0

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    and-int/lit8 v15, v15, -0x2

    invoke-direct {v11, v12, v14, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v11, v10, v7

    goto :goto_3

    :cond_5
    iget v12, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget v14, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v15

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v11

    new-instance v11, Landroid/graphics/Rect;

    int-to-float v12, v12

    mul-float/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    int-to-float v13, v13

    mul-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    and-int/lit8 v13, v13, -0x2

    int-to-float v14, v14

    mul-float/2addr v14, v0

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    and-int/lit8 v14, v14, -0x2

    int-to-float v15, v15

    mul-float/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    and-int/lit8 v15, v15, -0x2

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v11, v10, v7

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_6
    move-object v5, v10

    :goto_4
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :pswitch_0
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_f

    :cond_7
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    if-nez v8, :cond_8

    goto/16 :goto_f

    :cond_8
    invoke-virtual {v8}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v8

    :goto_5
    if-eqz v8, :cond_22

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v9, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v10, "PANO_GAIN_DETECT"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-static {v8}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getGain(Landroid/media/Image;)D

    move-result-wide v9

    invoke-virtual {v8}, Landroid/media/Image;->close()V

    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    sget-object v11, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v11}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    sget-object v12, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_9

    if-eqz v11, :cond_9

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v3

    if-eqz v13, :cond_9

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_9

    const-wide/16 v13, 0x0

    cmpl-double v15, v9, v13

    if-nez v15, :cond_a

    :cond_9
    move-wide/from16 v17, v3

    goto/16 :goto_b

    :cond_a
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Range;

    sget-object v16, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/util/Range;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/Integer;

    const/16 v16, 0x640

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v5, v13}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    iget-object v14, v13, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_b

    move v14, v6

    goto :goto_6

    :cond_b
    move v14, v7

    :goto_6
    monitor-exit v13

    if-eqz v14, :cond_c

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v13

    iget-object v4, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->PREVIEW_GAIN_RANGE:Landroid/util/Range;

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    int-to-double v13, v6

    mul-double/2addr v15, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    goto :goto_7

    :cond_c
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    :goto_7
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v13, v4

    mul-double/2addr v9, v13

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v9, v11

    iget-object v4, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBuf:[D

    iget v11, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    and-int/lit8 v11, v11, 0x7

    aput-wide v9, v4, v11

    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    :goto_8
    const/16 v12, 0x8

    if-ge v9, v12, :cond_d

    int-to-double v12, v9

    iget v14, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    add-int/2addr v14, v9

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v4, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    const-wide v12, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v10, v12

    new-instance v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v9, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PANO_ANTI_FLICKER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-wide v12, 0x4157d78400000000L    # 6250000.0

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_e

    if-nez v9, :cond_e

    const-wide v15, 0x40fe848000000000L    # 125000.0

    const-wide v19, 0x416312d000000000L    # 1.0E7

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->rint(D)D

    move-result-wide v13

    double-to-long v12, v13

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v12, v12

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    int-to-double v12, v9

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    goto/16 :goto_9

    :cond_e
    const-wide v19, 0x416312d000000000L    # 1.0E7

    const-wide v12, 0x4177d78400000000L    # 2.5E7

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_f

    if-nez v9, :cond_f

    const-wide v12, 0x410e848000000000L    # 250000.0

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v12, v12

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto/16 :goto_9

    :cond_f
    const-wide v12, 0x4197d78400000000L    # 1.0E8

    cmpg-double v14, v10, v12

    if-gtz v14, :cond_10

    if-nez v9, :cond_10

    const-wide v12, 0x411e848000000000L    # 500000.0

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v12, v12

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto/16 :goto_9

    :cond_10
    const-wide v14, 0x41b7d78400000000L    # 4.0E8

    cmpg-double v14, v10, v14

    if-gtz v14, :cond_11

    if-nez v9, :cond_11

    const-wide v12, 0x412e848000000000L    # 1000000.0

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v12, v12

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto/16 :goto_9

    :cond_11
    const-wide v14, 0x41edcd6500000000L    # 4.0E9

    cmpg-double v14, v10, v14

    if-gtz v14, :cond_12

    if-nez v9, :cond_12

    const/16 v9, 0x190

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    int-to-double v12, v9

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    goto/16 :goto_9

    :cond_12
    const-wide v14, 0x41f65a0bc0000000L    # 6.0E9

    cmpg-double v9, v10, v14

    if-gtz v9, :cond_13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v12, v12

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto/16 :goto_9

    :cond_13
    const-wide v14, 0x41fbf08eb0000000L    # 7.5E9

    cmpg-double v9, v10, v14

    if-gtz v9, :cond_14

    const/16 v9, 0x258

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    int-to-double v12, v9

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    goto/16 :goto_9

    :cond_14
    const-wide v14, 0x4222a05f20000000L    # 4.0E10

    cmpg-double v9, v10, v14

    if-gtz v9, :cond_15

    const-wide v12, 0x416fca0555555555L    # 1.6666666666666666E7

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v12, v12

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto/16 :goto_9

    :cond_15
    const-wide v14, 0x4238d5d42aaaaaabL    # 1.0666666666666667E11

    cmpg-double v9, v10, v14

    if-gtz v9, :cond_16

    const/16 v9, 0xc80

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    int-to-double v12, v9

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    goto/16 :goto_9

    :cond_16
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v14, v9

    const-wide v21, 0x41cdcd6500000000L    # 1.0E9

    mul-double v14, v14, v21

    const-wide/high16 v23, 0x403e000000000000L    # 30.0

    div-double v14, v14, v23

    cmpg-double v9, v10, v14

    if-gtz v9, :cond_17

    const-wide v12, 0x417fca0555555555L    # 3.3333333333333332E7

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v12, v12

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto :goto_9

    :cond_17
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v14, v9

    mul-double v14, v14, v21

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    div-double v14, v14, v21

    cmpg-double v9, v10, v14

    if-gtz v9, :cond_18

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    int-to-double v12, v9

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    goto :goto_9

    :cond_18
    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v12, v12

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    :goto_9
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_1c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v2, :cond_19

    const-wide v13, 0x415fca0555555555L    # 8333333.333333333

    goto :goto_a

    :cond_19
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_1a

    move-wide/from16 v13, v19

    goto :goto_a

    :cond_1a
    const-wide/16 v13, 0x0

    :goto_a
    const-wide v15, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v15, v13

    iget-wide v6, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v6, v6

    cmpg-double v15, v15, v6

    if-gtz v15, :cond_1b

    cmpg-double v15, v6, v13

    if-gez v15, :cond_1b

    invoke-static {v13, v14}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v6, v6

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto :goto_c

    :cond_1b
    cmpl-double v15, v6, v13

    if-ltz v15, :cond_1c

    div-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    mul-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v6, v6

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto :goto_c

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_b
    const/4 v4, 0x0

    :cond_1c
    :goto_c
    if-nez v4, :cond_1d

    goto/16 :goto_e

    :cond_1d
    sget-object v3, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v3, v3, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq v3, v5, :cond_21

    sget-object v5, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-ne v3, v5, :cond_1e

    goto/16 :goto_e

    :cond_1e
    iget-object v3, v8, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANO_SENSOR_EXPOSURE_TIME"

    iget-wide v6, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "PANO_SENSOR_SENSITIVITY"

    iget v6, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v5, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    const-wide/32 v10, 0x3938700

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    sget-object v3, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v8, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v8, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    monitor-enter v3

    :try_start_2
    iget-object v4, v8, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANO_GAIN_DETECT"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    monitor-exit v3

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_d

    :cond_1f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mSetRepeatingRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;

    iget-object v7, v8, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v8, v6, v7}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    monitor-exit v3

    goto :goto_e

    :goto_d
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_20
    move-wide/from16 v17, v3

    invoke-virtual {v8}, Landroid/media/Image;->close()V

    :cond_21
    :goto_e
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v8

    move-wide/from16 v3, v17

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_22
    :goto_f
    return-void

    :pswitch_1
    move-wide/from16 v17, v3

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_23

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->FRAME_COLLECTED:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v2, v2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_23
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_24
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_RAW_PT_ALG_RESULT:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mFirstFrame:Z

    if-eqz v3, :cond_26

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SEQ_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_26

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_25

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_25
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureIso:I

    :cond_26
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-nez v2, :cond_27

    iget-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mFirstFrame:Z

    if-eqz v2, :cond_27

    const/4 v12, 0x0

    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mFirstFrame:Z

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mFirstFrameNumber:J

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeed()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    div-long/2addr v4, v2

    iput-wide v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestNumber:J

    :cond_27
    iget-wide v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestNumber:J

    cmp-long v2, v2, v17

    if-lez v2, :cond_28

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mFirstFrameNumber:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v9, 0x1

    add-int/2addr v2, v9

    iget-wide v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestNumber:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x8

    cmp-long v2, v3, v5

    if-nez v2, :cond_28

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_28
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_10

    :cond_29
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :goto_10
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_2a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p0}, Lcom/google/zxing/Result;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const-string v2, "Capture Fail."

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean p2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    const/16 p2, 0x1770

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-static {v1, p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LP_CAPTURE_FAIL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->$r8$classId:I

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mFirstFrame:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "SEQ_ID"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureStartTime:J

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
