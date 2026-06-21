.class public final Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public volatile mAudioLensSwitchEnabled:Z

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mIdentityMatrix:[F

.field public mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mSelfieFlipX:I

.field public mSelfieFlipY:I

.field public mSelfieShouldFlip:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mIdentityMatrix:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieShouldFlip:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipX:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipY:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    return-void
.end method

.method public final onDrawFbo([F[F)V
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    instance-of p2, p2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-wide v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTimestamp:J

    :cond_0
    instance-of p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-wide v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterLatestTimestampNs:J

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTimestamp:J

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v2, v1}, Lcom/motorola/camera/VideoHelper;->isDVPreviewSize(Lcom/motorola/camera/PreviewSize;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1, v2, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    :cond_2
    invoke-static {v2, v2, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v1

    const v2, 0x8d40

    invoke-static {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v1, 0x4100

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mAudioLensSwitchEnabled:Z

    if-eqz v1, :cond_3

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->RECORDING:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieShouldFlip:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipX:I

    int-to-float v1, v1

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipY:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_0
    invoke-static {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    return-void
.end method

.method public final setPreviewSize(Lcom/motorola/camera/PreviewSize;)V
    .locals 4

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLandscapeLayout()Z

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p1

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    return-void
.end method

.method public final setSelfieFlip(I)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieShouldFlip:Z

    const/16 v1, 0x10e

    const/4 v2, -0x1

    if-eq v1, p1, :cond_1

    const/16 v1, 0x5a

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipX:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipY:I

    return-void

    :cond_1
    :goto_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipX:I

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipY:I

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieShouldFlip:Z

    :cond_3
    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    return-void
.end method
