.class public final Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public final projectionMatrix:[F

.field public final sharedContext:Lcom/google/android/gms/tasks/zzb;

.field public size:Landroid/util/Size;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

.field public final viewMatrix:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;Lcom/google/android/gms/tasks/zzb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/google/android/gms/tasks/zzb;

    new-instance p1, Landroid/util/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    const/16 p1, 0x10

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    return-void
.end method


# virtual methods
.method public final doDrawFrame()V
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->getCameraPreviewTexture()Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/google/android/gms/tasks/zzb;

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Landroid/util/Size;

    sget-boolean v6, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v6, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    div-float/2addr v3, v4

    goto :goto_3

    :cond_0
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v7

    :goto_1
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-lt v6, v9, :cond_3

    move v7, v8

    :cond_3
    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v3

    :cond_4
    :goto_2
    div-float v3, v4, v3

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    :cond_6
    div-float/2addr v3, v6

    goto :goto_2

    :goto_3
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->displayRotation:F

    invoke-virtual {v0, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    invoke-virtual {v0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    invoke-virtual {v0, v1, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_8
    return-void
.end method

.method public final getCameraPreviewTexture()Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/google/android/gms/tasks/zzb;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    instance-of v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_1
    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    return-object v1
.end method

.method public final isSplitMode()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/google/android/gms/tasks/zzb;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    instance-of v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    const-class p1, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter p1

    monitor-exit p1

    sget-object p1, Lcom/motorola/camera/cli/DualPreviewManager;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/google/android/gms/tasks/zzb;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->doDrawFrame()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p1

    throw p0
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/Size;

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v1, v2

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float v8, v1, v2

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v1, "glViewport"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    neg-float v6, v5

    neg-float v7, v8

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    const/4 v4, 0x0

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v11 .. v21}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method
