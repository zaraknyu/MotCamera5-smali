.class public final Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public final mDensity:F

.field public mDropCount:I

.field public final mFadeCollisionPolicy:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;

.field public volatile mHistogramHandler:Landroid/os/Handler;

.field public volatile mInIdle:Z

.field public mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

.field public final mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

.field public final mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mInIdle:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mDropCount:I

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mFadeCollisionPolicy:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mDensity:F

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 13

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v12}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HistogramComponent"

    return-object p0
.end method

.method public final getTexturePosition$1()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mDensity:F

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    move-object v5, v1

    check-cast v5, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;

    iget-object v6, v5, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0704c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    const/high16 v3, 0x42a00000    # 80.0f

    mul-float/2addr v3, v1

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    mul-float/2addr v6, v4

    sub-float/2addr v3, v6

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    const/high16 v3, 0x42600000    # 56.0f

    mul-float/2addr v3, v1

    sub-float/2addr v3, v6

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v4

    sub-float/2addr p0, v0

    const v0, 0x7f0704c6

    iget-object v1, v5, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p0, v0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v6, v5

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v6, v5

    sub-float/2addr v6, v7

    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v4

    add-float/2addr v0, p0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    sub-float p0, v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x41e80000    # 29.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/high16 v6, 0x42340000    # 45.0f

    mul-float/2addr v3, v6

    sub-float/2addr v5, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v4

    sub-float/2addr v5, v3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    div-float/2addr p0, v4

    add-float/2addr p0, v0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v0

    sub-float/2addr p0, v0

    :goto_0
    move v2, v5

    goto :goto_1

    :cond_3
    move p0, v2

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v0
.end method

.method public final isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final loadTextures()Z
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mFadeCollisionPolicy:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mCollisionPolicy:Lcom/google/android/gms/internal/mlkit_vision_common/zzkw;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->getTexturePosition$1()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mInIdle:Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HistogramComponent"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mHistogramHandler:Landroid/os/Handler;

    return v0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->onPreDraw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final onRotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->getTexturePosition$1()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->getTexturePosition$1()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->onRotate(I)V

    return-void
.end method

.method public final processFrame(Landroid/media/Image;)V
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mDropCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mDropCount:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mInIdle:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mInIdle:Z

    new-instance v1, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p1

    div-int/lit8 v5, v5, 0x8

    mul-int v6, p1, v5

    new-array v6, v6, [B

    move v7, v3

    :goto_0
    if-ge v3, v5, :cond_1

    mul-int/lit8 v8, v3, 0x8

    mul-int/2addr v8, v4

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v6, v7, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v7, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v6, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v2, 0x1a

    invoke-direct {p1, v2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mHistogramHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mDropCount:I

    :cond_3
    :goto_2
    return-void
.end method

.method public final processFrameMoon(Landroid/media/Image;)[I
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p1

    div-int/lit8 v2, v2, 0x8

    mul-int v3, p1, v2

    new-array v4, v3, [B

    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_0

    mul-int/lit8 v7, v5, 0x8

    mul-int/2addr v7, v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v4, v6, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v6, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    new-array p1, p0, [I

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-byte v2, v4, v1

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit16 v2, v2, 0x100

    :goto_2
    move v5, v0

    :goto_3
    if-ge v5, p0, :cond_3

    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v7, v6, 0x2

    if-gt v6, v2, :cond_2

    if-ge v2, v7, :cond_2

    aget v2, p1, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v5

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_4
    return-object p1

    :cond_5
    return-object v1
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isProModeSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->updateHistogram()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception p1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->hide()V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isProModeSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->hide()V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->hide()V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "MODE"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->hide()V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_1

    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->hide()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public final unloadTextures()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mHistogramHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mHistogramHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->unloadTexture()V

    return-void
.end method
