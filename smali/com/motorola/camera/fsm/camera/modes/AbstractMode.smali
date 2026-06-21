.class public abstract Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBgHandler:Landroid/os/Handler;

.field public final mBundle:Landroid/os/Bundle;

.field public final mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

.field public mSessionSurfacesClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    new-instance v0, Lcom/motorola/camera/fsm/RequestBuilders;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/RequestBuilders;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public static addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void
.end method

.method public static notifyCaptureSave()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f120676

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/16 v3, 0xbb8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method


# virtual methods
.method public final createCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Ljava/util/ArrayList;
    .locals 3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onCreateCaptureRequests(Ljava/util/ArrayList;Z)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    monitor-enter p0

    :try_start_0
    sget-boolean p2, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "RequestBuilders"

    const-string v0, "add all builders"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v1, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    iget v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    iget v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have duplicate CaptureRequest IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getBgHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBgHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    sget v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;->$r8$clinit:I

    const-class v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread$LazyLoader;->INSTANCE:Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBgHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    const-string v0, "No builder of type "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/RequestWrapper;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getFullFrameExposureCompensation(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
.end method

.method public getSlavePreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStreamingRequests()Ljava/util/ArrayList;
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mActive:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSubPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public abstract onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
.end method

.method public abstract onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
.end method

.method public abstract onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
.end method

.method public abstract onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
.end method

.method public abstract onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
.end method

.method public abstract onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
.end method

.method public abstract onSurfaceKeysRequired()Ljava/util/ArrayList;
.end method

.method public abstract onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
.end method

.method public final setStreamingRequests(Ljava/util/List;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v2, p0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    return-void
.end method

.method public final setupReprocCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/ShotType;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    new-instance v0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    iput-object p3, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    monitor-enter p3

    :try_start_0
    iget-object v1, p3, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

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

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public teardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    return-void
.end method
