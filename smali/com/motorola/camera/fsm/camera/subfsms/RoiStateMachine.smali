.class public final Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public mCachedAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public mCachedAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public mRoiState:I


# direct methods
.method public static setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v1, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object p2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "RoiStateMachine"

    const-string p1, "onCaptureCompleted - missing result, skipping ROI update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    array-length p2, p2

    :cond_5
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_6
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x3

    goto :goto_2

    :cond_9
    const/4 p1, 0x2

    :goto_2
    iget p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mRoiState:I

    if-eq p2, p1, :cond_b

    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mRoiState:I

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_b
    :goto_3
    return-void

    :cond_c
    invoke-static {p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetState()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mRoiState:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->cancelRoi()V

    return-void
.end method
