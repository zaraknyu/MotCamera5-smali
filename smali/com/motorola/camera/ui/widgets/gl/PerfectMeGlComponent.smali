.class public final Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;


# instance fields
.field public final mBitmapLock:Ljava/lang/Object;

.field public final mCurrentLux:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mEnvInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mIdentityMatrix:[F

.field public final mIsOverlayProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mOffscreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mOverlayBitmap:Landroid/graphics/Bitmap;

.field public mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public final mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

.field public final mProgressListener:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

.field public final mProgressValue:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mShouldUpdateOverlayBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->SHOW_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mIsOverlayProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mShouldUpdateOverlayBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const v0, 0x3ee66666    # 0.45f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mProgressValue:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mCurrentLux:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mBitmapLock:Ljava/lang/Object;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mIdentityMatrix:[F

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mProgressListener:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mEnvInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOffscreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final acquirePreviewSnapshotTexture()Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 3

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PerfectMeGlComponent"

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOffscreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mBitmapLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayBitmap:Landroid/graphics/Bitmap;

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mProgressValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mIsOverlayProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOffscreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->acquirePreviewSnapshotTexture()Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v3

    const v4, 0x8d40

    invoke-static {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v3, 0x4100

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mIdentityMatrix:[F

    invoke-virtual {v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v4, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p3

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v2, "PerfectMeGlComponent"

    const-string v3, "capturePixelsFromFramebuffer failed"

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p3, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;Ljava/nio/ByteBuffer;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mShouldUpdateOverlayBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->acquirePreviewSnapshotTexture()Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p3, p3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return p2
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    iget p2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOffscreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    return-void
.end method

.method public final setVisibility(Z)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v1, 0x13

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mIsOverlayProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mProgressListener:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_PROGRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mEnvInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mBitmapLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInCaptureState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mShouldUpdateOverlayBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mShouldUpdateOverlayBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->setVisibility(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mProgressListener:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_PROGRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mEnvInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->setVisibility(Z)V

    goto/16 :goto_4

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->setVisibility(Z)V

    goto/16 :goto_4

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x37

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mIsOverlayProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_5

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_5
    if-nez v1, :cond_b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->setVisibility(Z)V

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->setVisibility(Z)V

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->setVisibility(Z)V

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInOverlayState()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mIsOverlayProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mCurrentLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    const p1, 0x3ee66666    # 0.45f

    goto :goto_3

    :cond_a
    const p1, 0x3eb33333    # 0.35f

    :goto_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_PROGRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_b
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOffscreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
