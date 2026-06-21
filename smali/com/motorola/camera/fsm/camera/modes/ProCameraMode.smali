.class public final Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;
.super Lcom/motorola/camera/fsm/camera/modes/PhotoMode;
.source "SourceFile"


# instance fields
.field public mCameraId:Ljava/lang/String;

.field public final mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

.field public mFrameNum:I

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mInputHeight:I

.field public mInputWidth:I

.field public mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

.field public mLastFrameUV:Ljava/nio/ByteBuffer;

.field public mLastFrameY:Ljava/nio/ByteBuffer;

.field public final mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

.field public mPreviewFullYuvImageReader:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;-><init>()V

    new-instance v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-direct {v0}, Lcom/motorola/camera/arcsoft/StellarTrackParams;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    return-void
.end method

.method public static copyFrame(Landroid/media/Image;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public static setTuningParamsByTag(Lcom/motorola/camera/fsm/RequestWrapper;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setArcPtDataPtType(ILandroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/16 p1, 0x17

    goto :goto_0

    :cond_0
    const/16 p1, 0x34

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void

    :cond_1
    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setArcPtDataPtType(ILandroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    if-eqz p2, :cond_2

    const/16 p1, 0x18

    goto :goto_1

    :cond_2
    const/16 p1, 0x35

    :goto_1
    invoke-static {p0, v0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setArcPtDataPtType(ILandroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    if-eqz p2, :cond_4

    const/16 p1, 0x19

    goto :goto_2

    :cond_4
    const/16 p1, 0x36

    :goto_2
    invoke-static {p0, v0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->ARC_PT_DATA_STELLAR_TRACK:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/16 p1, 0x33

    invoke-static {p0, v0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSlavePreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mPreviewFullYuvImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public final getSubPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mPreviewFullYuvImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ProCameraMode"

    return-object p0
.end method

.method public final isPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 0

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/DnDHandler;->isDnDPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    return p0
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->addResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final declared-synchronized onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mPreviewFullYuvImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mPreviewFullYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mPreviewFullYuvImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
    .locals 2

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p2, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {p0, v1, p2, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v7

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v10, 0x0

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mInputWidth:I

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mInputHeight:I

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v3, 0x23

    const/4 v6, 0x2

    invoke-static {v7, v3, v6, v2, v5}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mPreviewFullYuvImageReader:Landroid/media/ImageReader;

    new-instance v11, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/16 v8, 0x23

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v11, v9, v3, v10}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCamIdForJpegImageReader()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v12

    new-instance v4, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v4, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;)V

    new-instance v5, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v5, v12}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    sget-object v14, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v5, 0x100

    const/4 v6, 0x4

    invoke-static {v2, v5, v6, v3, v14}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    sget-object v5, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v5, v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v0, v0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v15

    const/16 v17, 0x100

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v3, v9, v11, v10}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-virtual {p0}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->init()V

    return-void
.end method

.method public final onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 11

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v5, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iput-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mCameraId:Ljava/lang/String;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "CAPTURE_TYPE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isLongExposureCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    if-eqz v6, :cond_1

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v6, p3, v10}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFrameNum:I

    invoke-virtual {v9}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->updateGpsDateFovParams()V

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mInputWidth:I

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mInputHeight:I

    invoke-static {v0, p0, v9}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->initParams(IILcom/motorola/camera/arcsoft/StellarTrackParams;)V

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, v0, p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0, p3, v10}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ARC_PT_DATA_USEFLAG:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p3, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ARC_PT_DATA_PTTYPE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p3, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_RAW_PT_CAPTURE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p3, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ARC_PT_DATA_USEFLAG:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p3, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, v0, p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, p1, p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_EXP_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v1, v6, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ISO_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v1, v6, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v0, v3

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_METADATA_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p0, p3, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ARC_PT_DATA_USEFLAG:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v6, v7

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, p0, p3, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v0, v1

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_METADATA_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p0, p3, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, v0, p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, v0, p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, p1, p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p2, p0, v3}, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->setTuningParamsByTag(Lcom/motorola/camera/fsm/RequestWrapper;IZ)V

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_RAW_PT_CAPTURE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v6, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v1, v0, p3, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ARC_PT_DATA_STELLAR_TRACK:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object p2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p2, p3, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_3
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, p2, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-ne p0, p1, :cond_4

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->LONG_EXP:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne v5, p0, :cond_4

    invoke-virtual {v9}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->beginCapture()V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SESSION_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_LONG_EXPOSURE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_4
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->setTuningParamsByTag(Lcom/motorola/camera/fsm/RequestWrapper;IZ)V

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setArcPtDataPtType(ILandroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->ARC_PT_DATA_STELLAR_TRACK:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v2, p1, p0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_0
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_EXP_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ISO_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object p2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSurfaceKeysRequired()Ljava/util/ArrayList;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-virtual {p0}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->release()V

    return-void
.end method

.method public final setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    const-string p0, "fsmContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "perm_request_code"

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
