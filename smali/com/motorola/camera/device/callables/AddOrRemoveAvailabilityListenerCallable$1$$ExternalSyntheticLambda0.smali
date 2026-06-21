.class public final synthetic Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraKpi;

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCameraUnavailable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AddOrRemoveAvailabilityCallbackRunnable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v1, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/device/CameraStateManager;

    iget-object v1, v1, Lcom/motorola/camera/device/CameraStateManager;->mCameraAvailableStatusMap:Ljava/util/LinkedHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_UNAVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraKpi;

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCameraAvailable:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AddOrRemoveAvailabilityCallbackRunnable"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v2, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/device/CameraStateManager;

    iget-object v2, v2, Lcom/motorola/camera/device/CameraStateManager;->mCameraAvailableStatusMap:Ljava/util/LinkedHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isReadyToOpenCamera(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
