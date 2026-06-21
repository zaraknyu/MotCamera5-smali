.class public final Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public final debugBroadcastHelper:Lcom/google/zxing/Result;

.field public final mDensity:F

.field public mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mDensity:F

    new-instance p1, Lcom/google/zxing/Result;

    new-instance p2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v0, 0x1c

    invoke-direct {p2, v0, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/google/zxing/Result;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->debugBroadcastHelper:Lcom/google/zxing/Result;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 11

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

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v10}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DebugIdComponent"

    return-object p0
.end method

.method public final getTexturePosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mDensity:F

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    new-instance v3, Landroid/graphics/Rect;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v5, v5, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    const/16 v8, 0x5a

    if-eq v6, v8, :cond_2

    const/16 v8, 0xb4

    if-eq v6, v8, :cond_3

    const/16 v3, 0x10e

    if-eq v6, v3, :cond_0

    return-object v5

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sub-float/2addr v0, v2

    invoke-virtual {v5, v7, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v5

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr p0, v2

    invoke-virtual {v5, p0, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v5

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v2

    invoke-virtual {v5, p0, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v5

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p0, v1

    sub-float/2addr p0, v2

    sub-float/2addr v0, v2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {v5, v7, p0, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v5
.end method

.method public final isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final loadTextures()Z
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->getTexturePosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->debugBroadcastHelper:Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->registerActionReceiver()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->onPreDraw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

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
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->getTexturePosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->onRotate(I)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 2

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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iput-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mEnable:Z

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iput-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mEnable:Z

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->getTexturePosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->debugBroadcastHelper:Lcom/google/zxing/Result;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
