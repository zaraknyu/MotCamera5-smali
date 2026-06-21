.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field public static mFrameDelayToken:I

.field public static mTidCount:I

.field public static mToken:I


# instance fields
.field public mCameraId:Ljava/lang/String;

.field public mCameraUpdateThread:Landroid/os/HandlerThread;

.field public mClosing:Z

.field public mDualMode:Z

.field public mEnabled:Z

.field public mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

.field public final mFpsCalculator:Lcom/motorola/camera/utility/FpsCalculator;

.field public final mFrameDelayTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public mFrameTimeEnable:Z

.field public mHandler:Landroid/os/Handler;

.field public mIsActive:Z

.field public final mIsMaster:Z

.field public mMasterLatestTimestampNs:J

.field public mMasterRender:Z

.field public mMono:Z

.field public mPhysicalCameraId:Ljava/lang/String;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mSTMatrix:[F

.field public mStartTime:J

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceTex:Landroid/graphics/SurfaceTexture;

.field public final mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public mTextureID:I

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mTimestampOffset:J

.field public final mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public volatile mUpdateAvailable:Z

.field public mViewSize:Lcom/motorola/camera/PreviewSize;

.field public mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

.field public mViewfinderTextureToUnload:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

.field public mVisibleTimestampUpdate:J

.field public final mVisibleTimestamps:[J


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z

    .line 5
    new-instance p1, Lcom/motorola/camera/utility/FpsCalculator;

    const/4 p5, 0x0

    invoke-direct {p1, p5}, Lcom/motorola/camera/utility/FpsCalculator;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFpsCalculator:Lcom/motorola/camera/utility/FpsCalculator;

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mStartTime:J

    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    const/16 p1, 0x10

    .line 8
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameDelayTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    invoke-static {p1, p5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p1, p5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 13
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsMaster:Z

    .line 14
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 15
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 3

    .line 17
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z

    .line 21
    new-instance p2, Lcom/motorola/camera/utility/FpsCalculator;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/motorola/camera/utility/FpsCalculator;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFpsCalculator:Lcom/motorola/camera/utility/FpsCalculator;

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mStartTime:J

    const/4 p2, 0x2

    .line 23
    new-array p2, p2, [J

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    const/16 p2, 0x10

    .line 24
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    .line 25
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 26
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameDelayTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 27
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    .line 28
    iget-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z

    .line 29
    iget-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z

    .line 30
    iget-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z

    .line 31
    iget-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    .line 32
    iget-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsMaster:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsMaster:Z

    .line 33
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 34
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 36
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_0

    .line 37
    new-instance p2, Lcom/motorola/camera/PreviewSize;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {p2, v1, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 38
    :cond_0
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_1

    .line 39
    new-instance p2, Lcom/motorola/camera/PreviewSize;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {p2, v0, p1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder()V

    return-void
.end method


# virtual methods
.method public getTransformMatrix()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsMaster:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PREVIEW_ST:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final getVisibleTimestampAt(J)J
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestampUpdate:J

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    const/4 p1, 0x1

    aget-wide p0, p0, p1

    monitor-exit v0

    return-wide p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V
    .locals 8

    const-string p4, "CameraPreviewTexture"

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->releaseSurface()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPhysicalCameraId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTidCount:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTidCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v7, 0x22

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->setSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized isEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z
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

.method public declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    const v0, 0x84c1

    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    const v0, 0x8d65

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->loadTexture()V
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

.method public declared-synchronized onDraw([F[F)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const v0, 0x84c1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "CameraPreviewTexture.requestRenderSurface"

    invoke-static {v0, v2}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    const-string v2, "CameraPreviewTexture.onFrameAvailable"

    invoke-static {v0, v2}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsMaster:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTimestampOffset:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTimestampOffset:J

    :cond_1
    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTimestampOffset:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMasterLatestTimestampNs:J

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getTransformMatrix()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->updateFrameCount()V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    const v2, 0x8d65

    invoke-static {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTextureToUnload:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->unloadTexture()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTextureToUnload:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mIsLoaded:Z

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->loadTexture()V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2, v0, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_7
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mDualMode:Z

    if-eqz p1, :cond_8

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_9

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mSTMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_a

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->updateVisibleTimestamp(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    sget p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mToken:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mToken:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-string v0, "CameraPreviewTexture.onFrameAvailable"

    invoke-static {p1, v0}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsMaster:Z

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurfaceDirectly(Z)V

    :cond_0
    const-string v0, "CameraPreviewTexture.requestRenderSurface"

    invoke-static {p1, v0}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public declared-synchronized releaseSurface()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurface:Landroid/view/Surface;

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mHandler:Landroid/os/Handler;

    :cond_2
    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mToken:I

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameDelayToken:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameDelayTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized resetPosition()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
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

.method public final declared-synchronized setActive(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
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

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
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

.method public final declared-synchronized setClosing(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
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

.method public declared-synchronized setDisplayOrientation(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewRotation:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

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

.method public final declared-synchronized setEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

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

.method public final declared-synchronized setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
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

.method public declared-synchronized setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewRotation:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final declared-synchronized setVerticesData([F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p1

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVerticesData:[F

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z
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

.method public final declared-synchronized setViewfinder()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTextureToUnload:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewRotation:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraPreviewTexture(TexID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClosing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized unloadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->releaseSurface()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateFrameCount()V
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameTimeEnable:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsMaster:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mDualMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMasterRender:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameDelayTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string/jumbo v2, "updateFrameCount"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v2}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    :cond_1
    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameDelayToken:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameDelayToken:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFpsCalculator:Lcom/motorola/camera/utility/FpsCalculator;

    iget-object v1, v0, Lcom/motorola/camera/utility/FpsCalculator;->frameTimeArray$delegate:Ljava/io/Serializable;

    check-cast v1, Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iget v2, v0, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    aput-wide v3, v1, v2

    iget v1, v0, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    iget v3, v0, Lcom/motorola/camera/utility/FpsCalculator;->recordCount:I

    if-lt v1, v3, :cond_2

    iput-boolean v2, v0, Lcom/motorola/camera/utility/FpsCalculator;->isFull:Z

    const/4 v1, 0x0

    iput v1, v0, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mStartTime:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    const-wide v5, 0x41a7d78400000000L    # 2.0E8

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/utility/FpsCalculator;->calculateFps()I

    move-result v0

    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mStartTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateVisibleTimestamp(J)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    aput-wide p1, v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestampUpdate:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
