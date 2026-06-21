.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;
.source "SourceFile"


# static fields
.field public static mToken:I


# instance fields
.field public mIsActivePhotoOn:Z

.field public mIsFirstFrame:Z

.field public mLastAddedToken:I

.field public final mOnImageAvailable:Landroid/media/ImageReader$OnImageAvailableListener;

.field public final mPreviewProcessLock:Ljava/lang/Object;

.field public mProcessingEnable:Z

.field public mSkipNextFrame:Z

.field public mSurfaceFacing:I

.field public mSurfaceMcfSupport:Z

.field public mSurfaceMode:I

.field public mSurfaceSensorOrientation:I

.field public mTimestamp:J

.field public final mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mPreviewProcessLock:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mLastAddedToken:I

    .line 5
    new-instance p1, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mOnImageAvailable:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 8
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mPreviewProcessLock:Ljava/lang/Object;

    .line 9
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p2, -0x1

    .line 10
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mLastAddedToken:I

    .line 11
    new-instance p2, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mOnImageAvailable:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 12
    iget-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 13
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-direct {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    .line 14
    iget-wide v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    .line 15
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsActivePhotoOn:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsActivePhotoOn:Z

    return-void
.end method

.method public static setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p3, p3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getOriginalPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p3, p3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object p1

    :goto_0
    iget-object p2, p1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p2, p1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getPreviewOffset()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getTransformMatrix()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getTransformMatrix()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public final declared-synchronized initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V
    .locals 2

    const-string v0, "CameraPreviewProcessingTexture"

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-nez v1, :cond_1

    const/4 p4, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->releaseSurface()V

    :cond_2
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPhysicalCameraId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTidCount:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    sput p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTidCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mHandler:Landroid/os/Handler;

    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mOnImageAvailable:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p4, p2, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsFirstFrame:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSkipNextFrame:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsSupported(Z)Z

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    sget-boolean p3, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p3, :cond_4

    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    :cond_4
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMode:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsActivePhotoOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->loadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->updateFrameCount()V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_3

    const-string p2, "CameraPreviewProcessingTexture.requestRenderSurface"

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mLastAddedToken:I

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_3

    const/4 p2, -0x1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mLastAddedToken:I

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-eqz p1, :cond_1

    :cond_4
    const/4 p1, 0x1

    if-le v1, p1, :cond_5

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_5

    const-string p1, "CameraPreviewProcessingTexture"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Possible skipped frames from reader -> GL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->updateVisibleTimestamp(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public abstract processPreview(Landroid/media/Image;Z[JZ)Z
.end method

.method public final declared-synchronized releaseSurface()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->releaseSurface()V

    const/4 v0, 0x0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mToken:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMode:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsActivePhotoOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setDisplayOrientation(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setDisplayOrientation(IZ)V
    .locals 3

    const-string v0, "Update surface orientation: "

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setDisplayOrientation(I)V

    .line 4
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_0

    .line 7
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-eqz v2, :cond_0

    .line 8
    invoke-static {p0, v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)V

    .line 9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 10
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 11
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    const/4 v2, 0x0

    .line 12
    invoke-static {v2, p1, p2, v1}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    .line 13
    const-string p1, "CameraPreviewProcessingTexture"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 7
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 8
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setSkipNextFrame()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSkipNextFrame:Z

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateSurfaceOrientation(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    int-to-float p1, p1

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    if-nez v0, :cond_2

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    const/16 p1, 0xb4

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    int-to-float p1, p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method
