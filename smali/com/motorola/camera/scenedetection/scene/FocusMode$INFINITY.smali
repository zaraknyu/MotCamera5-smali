.class public final Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;
.super Lcom/motorola/camera/scenedetection/scene/FocusMode;
.source "SourceFile"


# virtual methods
.method public final apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/scenedetection/scene/FocusMode;->applyFixedFocus(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method
