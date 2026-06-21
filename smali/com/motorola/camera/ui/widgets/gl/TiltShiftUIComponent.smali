.class public final Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public final mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

.field public final mOffScreenMSAA:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;

.field public final mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mTextureLoaded:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mTextureLoaded:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mOffScreenMSAA:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setVisibility$1(Z)V

    return-void
.end method

.method public static setMiniatureBokehEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 7

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TiltShiftUIComponent"

    return-object p0
.end method

.method public final interceptUiEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->isTapInPreview(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->isPointWithinLines(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTapInPreview(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {v2, v3, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 p0, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, p0, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 p0, 0x2

    new-array v3, p0, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput p1, v3, v1

    new-array p0, p0, [F

    invoke-virtual {v2, p0, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance p1, Landroid/graphics/PointF;

    aget v2, p0, v4

    aget p0, p0, v1

    invoke-direct {p1, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final loadTextures()Z
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mTextureLoaded:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mOffScreenMSAA:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mTextureLoaded:Z

    return v0
.end method

.method public final onDraw([F[F[F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    const/4 v6, 0x4

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v7, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v5

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v3

    invoke-virtual {v7, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mOffScreenMSAA:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;

    iget-boolean v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mResize:Z

    if-eqz v5, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->unloadTexture()V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->loadTexture()V

    iput-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mResize:Z

    :cond_1
    :goto_0
    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mFramebuffer:I

    const v6, 0x8d40

    invoke-static {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/4 v5, 0x0

    invoke-static {v5, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const/16 v5, 0x4100

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    move-object/from16 v5, p3

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mWidth:I

    if-eqz v5, :cond_5

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mHeight:I

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mResize:Z

    if-eqz v5, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->unloadTexture()V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->loadTexture()V

    iput-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mResize:Z

    :cond_4
    :goto_1
    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mFramebuffer:I

    const v8, 0x8ca8

    invoke-static {v8, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const v5, 0x8ca9

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v8

    invoke-static {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget v11, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mWidth:I

    iget v12, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mHeight:I

    const/16 v17, 0x4000

    const/16 v18, 0x2600

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v11

    move/from16 v16, v12

    invoke-static/range {v9 .. v18}, Landroid/opengl/GLES30;->glBlitFramebuffer(IIIIIIIIII)V

    const-string v0, "glBlitFramebuffer"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-static {v6, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/4 v0, 0x1

    invoke-static {v7, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z[F[F)V

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->draw([F[F)V

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const-string v0, "glStencilMask"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string v0, "glDisable"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->loadTextures()Z

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->unloadTextures()V

    return p1
.end method

.method public final onRotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->surfaceChanged(Lcom/motorola/camera/PreviewSize;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mOffScreenMSAA:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;

    if-eqz p0, :cond_0

    iget p2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mResize:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mWidth:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mHeight:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V
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

    :cond_0
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->isTapInPreview(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setVisibility$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/google/zxing/Result;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->initializeAxisTextureProperties()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setVisibility$1(Z)V

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setMiniatureBokehEnabled(Z)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->initializeAxisTextureProperties()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setVisibility$1(Z)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setMiniatureBokehEnabled(Z)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->TILT_SHIFT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setMiniatureBokehEnabled(Z)V

    if-nez v1, :cond_b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setVisibility$1(Z)V

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setMiniatureBokehEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->initializeAxisTextureProperties()V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setVisibility$1(Z)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->mPreviewRectSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Lcom/motorola/camera/PreviewSize;->isSameAspectRatio(Lcom/motorola/camera/PreviewSize;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->surfaceChanged(Lcom/motorola/camera/PreviewSize;)V

    :cond_8
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setMiniatureBokehEnabled(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->initializeAxisTextureProperties()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setVisibility$1(Z)V

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setMiniatureBokehEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setVisibility$1(Z)V

    goto :goto_2

    :cond_a
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setMiniatureBokehEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->setVisibility$1(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mTextureLoaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mAxisTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mOffScreenMSAA:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->unloadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->mTextureLoaded:Z

    return-void
.end method
