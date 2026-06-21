.class public final Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

.field public final synthetic val$cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic val$eventData:Ljava/lang/Object;

.field public final synthetic val$from:F

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic val$smoothFrames:I

.field public final synthetic val$state:Lcom/motorola/camera/fsm/camera/StateKey;

.field public final synthetic val$target:F

.field public final synthetic val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;Landroid/os/Looper;Lcom/motorola/camera/fsm/camera/FsmContext;IFFLcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    iput p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$from:F

    iput p6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$target:F

    iput-object p7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iput-object p8, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$cameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object p9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$state:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object p10, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$eventData:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    monitor-exit v0

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq v0, v2, :cond_b

    sget-object v2, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-ne v0, v2, :cond_4

    goto/16 :goto_4

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$from:F

    iget v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$target:F

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->sigmoid(F)F

    move-result v0

    sget v5, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->START:F

    sub-float/2addr v0, v5

    sget v6, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->END:F

    sub-float/2addr v6, v5

    div-float/2addr v0, v6

    invoke-static {v4, v2, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$target:F

    sget-boolean v5, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    sub-float v5, v2, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    sget-object v6, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    sget-object v7, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_7

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_7

    move v2, v4

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, -0x1

    :goto_2
    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ZOOM_JUMP_HINT"

    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$from:F

    iget v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$target:F

    new-array v7, v4, [F

    aput v2, v7, v3

    aput v6, v7, v1

    const-string v2, "ZOOM_JUMP_RATIO_RANGE"

    invoke-virtual {v5, v2, v7}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :cond_9
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$cameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iput v4, v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:I

    iput-boolean v3, v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    iput-boolean v1, v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result v0

    iput v0, v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-static {v0, v5}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    iget v0, v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-static {v0, v5, v6}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$state:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$eventData:Ljava/lang/Object;

    invoke-static {v0, v2, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->access$001(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    if-lt p1, v2, :cond_a

    goto :goto_3

    :cond_a
    move v1, v3

    :goto_3
    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x18

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b
    :goto_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
