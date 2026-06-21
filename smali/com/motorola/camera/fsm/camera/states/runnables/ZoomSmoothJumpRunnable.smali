.class public final Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "SourceFile"


# static fields
.field public static final END:F

.field public static final START:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->sigmoid(F)F

    move-result v0

    sput v0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->START:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->sigmoid(F)F

    move-result v0

    sput v0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->END:F

    return-void
.end method

.method public static synthetic access$001(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public static sigmoid(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    sub-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    div-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final buildRequests(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    invoke-static {p3, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 12

    .line 2
    instance-of v0, p3, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Landroid/os/Bundle;

    .line 3
    const-string v1, "ZOOM_JUMP_X"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SMOOTH_ZOOM_JUMP"

    const/4 v11, 0x0

    .line 4
    invoke-virtual {v0, v2, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 6
    const-string v1, "CAMERA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/motorola/camera/settings/CameraType;

    .line 7
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {v8, v11}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v0

    .line 10
    invoke-static {v8}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    .line 11
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getTeleSegmentMin()F

    move-result v4

    mul-float/2addr v0, v4

    mul-float/2addr v2, v4

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    .line 13
    invoke-static {v8, v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v0

    .line 14
    invoke-static {v8}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    .line 15
    :goto_0
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    div-float/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1
    move v5, v0

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {v8, v11}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v0

    div-float v0, v1, v0

    .line 17
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    .line 18
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 19
    invoke-static {v8}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    div-float v2, v1, v2

    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v0, v1, v0

    goto :goto_1

    :goto_2
    sub-float v0, v6, v5

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 21
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0xa

    mul-int/2addr v0, v1

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const/16 v2, 0x14

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 23
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 24
    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    .line 25
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;

    .line 26
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 27
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v9, p1

    move-object v3, p2

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;Landroid/os/Looper;Lcom/motorola/camera/fsm/camera/FsmContext;IFFLcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Object;)V

    .line 28
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 29
    iput v11, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 30
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_3
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
