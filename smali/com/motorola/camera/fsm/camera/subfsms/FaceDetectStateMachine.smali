.class public final Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public mFaceDetectMode:Ljava/lang/Integer;

.field public mFaces:[Landroid/hardware/camera2/params/Face;

.field public mFirstRun:Z


# direct methods
.method public static getSupportedMode()I
    .locals 6

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->FULL_FACE_DETECT_HIDDEN:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    if-ne v5, v1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_4

    aget v4, v0, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    return v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public static isFaceDetectionAllowed(Z)Z
    .locals 5

    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->getSupportedMode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_FACE_DETECTION:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SettingsHelper"

    const-string v4, "Improperly formatted video face detection values array"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    move p0, v1

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :cond_6
    move p0, v1

    :goto_2
    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move p0, v1

    goto :goto_4

    :cond_8
    :goto_3
    move p0, v2

    :goto_4
    if-nez p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p0

    if-nez p0, :cond_a

    move v1, v2

    :cond_a
    return v1
.end method


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isUwZoomBlendingCase()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v7, v6

    int-to-float v6, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v5, v7

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v5, v7

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_2

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaces:[Landroid/hardware/camera2/params/Face;

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFirstRun:Z

    if-nez v3, :cond_5

    if-nez v2, :cond_f

    :cond_5
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaces:[Landroid/hardware/camera2/params/Face;

    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFirstRun:Z

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUMP_FACE_DETECT_INFO_PER_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-boolean v5, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFirstRun:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_9

    iget-object v7, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaceDetectMode:Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_8

    if-eq v5, v6, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " <invalid>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    const-string v5, "CaptureResult.STATISTICS_FACE_DETECT_MODE_FULL"

    goto :goto_3

    :cond_7
    const-string v5, "CaptureResult.STATISTICS_FACE_DETECT_MODE_SIMPLE"

    goto :goto_3

    :cond_8
    const-string v5, "CaptureResult.STATISTICS_FACE_DETECT_MODE_OFF"

    :goto_3
    move-object v7, v5

    :goto_4
    move v5, v6

    goto :goto_5

    :cond_9
    const-string v7, "<null>"

    if-nez v5, :cond_b

    if-nez v4, :cond_a

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaceDetectMode:Ljava/lang/Integer;

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    move v5, v1

    :cond_b
    :goto_5
    iput-object v4, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaceDetectMode:Ljava/lang/Integer;

    const-string v4, " : "

    const-string v6, "FaceDetectStateMachine"

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_d
    const-string p2, "<unknown>"

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ts : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_e

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_e

    aget-object v0, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    if-nez v2, :cond_f

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaces:[Landroid/hardware/camera2/params/Face;

    invoke-interface {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;->onFaceDetected([Landroid/hardware/camera2/params/Face;)V

    goto :goto_8

    :cond_f
    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaceDetectMode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaces:[Landroid/hardware/camera2/params/Face;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFirstRun:Z

    return-void
.end method
