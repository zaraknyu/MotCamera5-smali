.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isTimelapseReentry()Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v1, v0, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
