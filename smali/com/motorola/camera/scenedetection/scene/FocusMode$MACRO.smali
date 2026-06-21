.class public final Lcom/motorola/camera/scenedetection/scene/FocusMode$MACRO;
.super Lcom/motorola/camera/scenedetection/scene/FocusMode;
.source "SourceFile"


# virtual methods
.method public final apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/scenedetection/scene/FocusMode;->applyFixedFocus(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method
