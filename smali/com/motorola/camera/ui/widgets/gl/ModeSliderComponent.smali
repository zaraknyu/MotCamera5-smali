.class public final Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;
.super Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final clickListener:Lcom/motorola/camera/PermissionCallback;

.field public mAppLoaded:Z

.field public final mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mFaceBeautyTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mFilterSliderTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public mTenBitModeSwitching:Z

.field public mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

.field public final mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

.field public mZoomSliderBarTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 2

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAppLoaded:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTenBitModeSwitching:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    new-instance p1, Lcom/motorola/camera/PermissionCallback;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->clickListener:Lcom/motorola/camera/PermissionCallback;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x1d

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static enableTalkBackCarouselVisible(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ENABLE_CAROUSEL_VISIBLE"

    invoke-static {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->VISIBLE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final animateShow$1$1()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableTalkBackCarouselVisible(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final dirty()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return-void
.end method

.method public final doSurfacePaneChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final enableClick(Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 31

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v21, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v22, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v23, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v24, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v25, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v26, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v27, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v28, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v29, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v30, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v30}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ModeSliderComponent"

    return-object p0
.end method

.method public final hide$1$1()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setVisibility$3(Z)V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableTalkBackCarouselVisible(Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadTextures()Z
    .locals 15

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V

    sget-object v5, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v6, "type"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v5, v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mFaceBeautyTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;

    const/4 v8, 0x5

    invoke-direct {v4, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V

    sget-object v8, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mFilterSliderTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;

    const/4 v9, 0x7

    invoke-direct {v4, p0, v9}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;I)V

    sget-object v9, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mZoomSliderBarTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAppLoaded:Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-direct {v4, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;)V

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->loadTexture()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v4, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setSize(Lcom/motorola/camera/PreviewSize;Z)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->clickListener:Lcom/motorola/camera/PermissionCallback;

    iput-object v9, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    const-wide/16 v9, -0x1

    iput-wide v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDisableTime:J

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setDisplayOrientation(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setVisibility$3(Z)V

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v10, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v11, v6, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float v13, v10, v11

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v12

    add-float v14, v6, v9

    add-float/2addr v11, v10

    sub-float/2addr v9, v6

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v13, v14, v11, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    iget v9, v0, Landroid/graphics/Point;->y:I

    int-to-float v10, v9

    div-float/2addr v10, v12

    add-float/2addr v10, v6

    float-to-int v6, v10

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v3, v6, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    invoke-direct {v0, v4}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-static {v4, v0}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->setBarKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK_FROM_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mFaceBeautyTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-static {v7, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mFilterSliderTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-static {v7, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mZoomSliderBarTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v7, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_2
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "loadTexture dur:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ModeSliderComponent"

    invoke-static {v1, v2, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    return v7
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->onPreDraw([F[F[F)Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onPreDraw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final onRotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public final onSettingChanged(Lcom/motorola/camera/settings/Setting;)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->reverseColor(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p2, p2

    const v0, 0x44038000    # 526.0f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mDensity:F

    mul-float/2addr v1, v0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    new-instance p2, Lcom/motorola/camera/PreviewSize;

    float-to-int v0, v1

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {p2, v0, p1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    move-object p1, p2

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/motorola/camera/utility/ColorUtil;->enable:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setSize(Lcom/motorola/camera/PreviewSize;Z)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAppLoaded:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v9

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    sget-object v11, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v11}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;

    goto :goto_0

    :cond_0
    move-object v11, v10

    :goto_0
    if-eqz v9, :cond_1

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v12}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/FrontZoomComponent;

    goto :goto_1

    :cond_1
    move-object v12, v10

    :goto_1
    if-eqz v9, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/RearSlaveZoomComponent;

    :cond_2
    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TILT_SHIFT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-virtual {v5, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->shouldProcessUiEventStream(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_3
    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v9, v6, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    iget-object v13, v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v13, :cond_5

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v13, v13, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v13, v13

    int-to-float v13, v13

    div-float/2addr v13, v15

    const/16 v16, 0x0

    neg-float v3, v13

    const/high16 v17, 0x41e00000    # 28.0f

    iget-object v14, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v14, v14, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v14}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v14

    move/from16 v18, v15

    sget v15, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    iget-object v4, v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v14, v15, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFZ)F

    move-result v4

    const/high16 v5, 0x42880000    # 68.0f

    sget v15, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    mul-float/2addr v15, v5

    add-float/2addr v15, v4

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isZoomSliderSliderState()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float v4, v4, v18

    invoke-virtual {v14}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v5

    add-float v5, v5, v17

    sget v6, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v13, v15, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v9, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v13, v6, v9

    if-gez v13, :cond_6

    iget v13, v5, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v14, v13, v5

    if-lez v14, :cond_6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_6

    cmpg-float v3, v3, v9

    if-gtz v3, :cond_6

    cmpg-float v3, v4, v13

    if-gtz v3, :cond_6

    cmpl-float v3, v4, v5

    if-ltz v3, :cond_6

    goto/16 :goto_4

    :cond_5
    move/from16 v18, v15

    const/16 v16, 0x0

    const/high16 v17, 0x41e00000    # 28.0f

    :cond_6
    iget-object v3, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget v4, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v4, v16

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v4, 0x1

    :goto_3
    iget-object v5, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    if-eqz v5, :cond_9

    iget-boolean v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    iget-object v4, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float v4, v4, v18

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v5, v5, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v5

    add-float v5, v5, v17

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->interceptUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz v11, :cond_a

    invoke-virtual {v11, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->interceptUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual {v12, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->interceptUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v10, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->interceptUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/TiltShiftUIComponent;->interceptUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    :cond_e
    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAppLoaded:Z

    if-nez v2, :cond_10

    goto :goto_4

    :cond_10
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTenBitModeSwitching:Z

    :goto_5
    if-eqz v3, :cond_11

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->cancelTouch()V

    return v16

    :cond_11
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v19, 0x1

    return v19

    :cond_12
    return v16
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK_FROM_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTalkback(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final show$1$1()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setVisibility$3(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableTalkBackCarouselVisible(Z)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTalkback(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_11

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->onSettingChanged(Lcom/motorola/camera/settings/Setting;)V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->reverseColor(Z)V

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_f

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->hide$1$1()V

    goto/16 :goto_10

    :cond_4
    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isTimerCapture(Lcom/google/zxing/Result;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowControlPanel()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    goto/16 :goto_10

    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-eqz v1, :cond_3a

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_1
    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mMaxAlpha:F

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_e

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v1, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->hide$1$1()V

    goto/16 :goto_10

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_d

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_c

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowControlPanel()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isZoomSliderSliderState()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAppLoaded:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->animateShow$1$1()V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTenBitModeSwitching:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipDragSwitch:Z

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSliderMode()V

    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShowDot:Z

    if-eqz v1, :cond_3a

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShowDot:Z

    goto/16 :goto_10

    :cond_e
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldShowAllUi(Lcom/google/zxing/Result;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->animateShow$1$1()V

    goto/16 :goto_10

    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setVisibility$3(Z)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-eq v0, v4, :cond_12

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v0, v4, :cond_10

    goto :goto_1

    :cond_10
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v0, v4, :cond_14

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v0, v4, :cond_11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateSliderToSingleMode(IZ)V

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider(I)V

    goto :goto_3

    :cond_12
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v0

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateSliderToMultiMode(I)V

    goto :goto_2

    :cond_13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider(I)V

    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateReload(Z)V

    :cond_14
    :goto_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackRunning()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;

    const/4 v0, 0x2

    invoke-direct {v5, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;-><init>(ILjava/lang/Object;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x64

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v4, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :cond_15
    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setVisibility$3(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->reverseColor(Z)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    goto/16 :goto_10

    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_10

    :cond_17
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout$4()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setVisibility$3(Z)V

    goto/16 :goto_10

    :cond_18
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_19
    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-eq v1, v4, :cond_1a

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v1, v4, :cond_1b

    :cond_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider(I)V

    :cond_1b
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateSliderToSingleMode(IZ)V

    :cond_1c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->setVisibility$3(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->reverseColor(Z)V

    goto/16 :goto_10

    :cond_1d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getTenBitSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_ENTER_TEN_BIT_MODE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v0, v1, :cond_3a

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTenBitModeSwitching:Z

    goto/16 :goto_10

    :cond_1e
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->cancelTouch()V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    goto/16 :goto_10

    :cond_1f
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    goto/16 :goto_10

    :cond_20
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v4}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v1, v4, v5}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSliderTag()V

    goto/16 :goto_10

    :cond_21
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSliderPosText(I)V

    goto/16 :goto_10

    :cond_22
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v5, v6, v7}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "SWITCH_CASE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    iget-object v5, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v5, v7, :cond_23

    move v7, v2

    goto :goto_5

    :cond_23
    move v7, v3

    :goto_5
    iput-boolean v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipDragSwitch:Z

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    iget-object v7, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v7, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "MODE"

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v7

    if-nez v7, :cond_25

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode(IIZ)Z

    move-result v7

    if-eqz v7, :cond_24

    goto :goto_6

    :cond_24
    move v7, v3

    goto :goto_7

    :cond_25
    :goto_6
    move v7, v2

    :goto_7
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTenBitModeSwitching:Z

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v7

    sget-object v8, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ne v0, v8, :cond_26

    monitor-exit p0

    return-void

    :cond_26
    :try_start_9
    invoke-static {v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v8

    if-nez v8, :cond_2a

    invoke-static {v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v1

    if-eq v7, v1, :cond_2e

    if-eqz v4, :cond_28

    if-eq v4, v2, :cond_28

    const/16 v1, 0x34

    if-ne v4, v1, :cond_27

    goto :goto_8

    :cond_27
    move v1, v3

    goto :goto_9

    :cond_28
    :goto_8
    move v1, v2

    :goto_9
    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v0, v5, :cond_29

    move v0, v2

    goto :goto_a

    :cond_29
    move v0, v3

    :goto_a
    invoke-virtual {v1, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateSliderToSingleMode(IZ)V

    invoke-static {v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    goto :goto_b

    :cond_2a
    if-eq v7, v1, :cond_2c

    invoke-static {v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {v6}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    goto :goto_b

    :cond_2b
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateSliderToMultiMode(I)V

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    goto :goto_b

    :cond_2c
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-eq v5, v0, :cond_2d

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v5, v0, :cond_2e

    :cond_2d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider(I)V

    :cond_2e
    :goto_b
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateReload(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_10

    :cond_2f
    invoke-virtual {p1, v4}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PERMISSIONS_GRANTED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-eqz v0, :cond_3a

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MODE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider(I)V

    goto :goto_10

    :cond_32
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->show$1$1()V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-nez v0, :cond_33

    goto :goto_10

    :cond_33
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    goto :goto_10

    :cond_34
    :goto_c
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->hide$1$1()V

    goto :goto_10

    :cond_35
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-nez v1, :cond_36

    goto :goto_10

    :cond_36
    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v0, 0x3

    :try_start_a
    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit v1

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableTalkBackCarouselVisible(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw p1

    :cond_37
    :goto_d
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    goto :goto_10

    :cond_38
    :goto_e
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->hide$1$1()V

    goto :goto_10

    :cond_39
    :goto_f
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->hideModeText()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    :cond_3a
    :goto_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_3b
    monitor-exit p0

    return-void

    :goto_11
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mAppLoaded:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->unloadTexture()V

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK_FROM_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mFaceBeautyTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mFilterSliderTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mZoomSliderBarTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_0
    return-void
.end method
