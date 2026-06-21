.class public final Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public final animationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mDensity:F

.field public mEnabledFastCaptureUITimer:Z

.field public final mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;

.field public final mSteadyListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 2

    const-string/jumbo v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->animationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance p1, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_STEADY_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mSteadyListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static shouldShowHoldStill(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isStreamingSupportedByCurrentMode(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostProcSupported()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LL_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJiganSIQNightVisionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSwHwQcfaShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized enableHoldStill(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIModes(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isNightVisionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNightVisionDedicated()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJiganSIQNightVisionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isNightVisionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostProcSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_RAW_OFFLINE_UI_FOR_NV:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_4

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120146

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_4
    :goto_1
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120145

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120143

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "getString(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "getDefault(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "toUpperCase(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120144

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIModes(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iget p2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    const/high16 v1, 0x42000000    # 32.0f

    :goto_4
    mul-float/2addr p2, v1

    sub-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_6

    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iget p2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    const/high16 v1, 0x43480000    # 200.0f

    goto :goto_4

    :goto_6
    iget p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mMaxWordWrapWidth:I

    if-eq p2, p1, :cond_9

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mMaxWordWrapWidth:I

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_9
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->HOLD_STILL_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 7

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HoldStillComponent"

    return-object p0
.end method

.method public final getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 11

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/high16 v1, 0x42400000    # 48.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v4, v6, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    new-instance v4, Landroid/graphics/Point;

    float-to-int v1, v1

    add-int/2addr v1, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    :goto_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    const/16 v6, 0x10e

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v1, v5, :cond_2

    if-ne v1, v6, :cond_3

    :cond_2
    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    iget v8, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v8, v7

    add-float/2addr v8, v2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v9, v9, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v9}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v9

    iget v10, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    mul-float/2addr v9, v10

    sub-float/2addr v2, v9

    const/high16 v9, 0x41400000    # 12.0f

    mul-float/2addr v10, v9

    sub-float/2addr v2, v10

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    sub-float/2addr v2, v9

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v2

    :goto_1
    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v9, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget v10, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v2, v0, v8

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq v0, v5, :cond_6

    if-ne v0, v6, :cond_b

    :cond_6
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v5, :cond_b

    iget v2, v4, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v5, v1

    sub-float/2addr v5, v2

    iget v1, v4, Lcom/motorola/camera/PreviewSize;->width:I

    mul-int/lit8 v4, v1, 0x4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    const/16 v9, 0xdc

    int-to-float v9, v9

    iget p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    mul-float/2addr v9, p0

    sub-float/2addr v4, v9

    int-to-float v3, v3

    div-float/2addr v4, v3

    sub-float/2addr v4, v2

    sub-float/2addr v5, v4

    const/16 v2, 0x32

    if-ne v0, v6, :cond_7

    int-to-float v0, v1

    div-float/2addr v0, v7

    int-to-float v1, v2

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0, v0, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0

    :cond_7
    neg-int v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v7

    int-to-float v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0, v1, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x42000000    # 32.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    mul-float/2addr v4, v3

    sub-float/2addr v0, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr v1, v3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq p0, v5, :cond_a

    if-eq p0, v6, :cond_9

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0, v8, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0

    :cond_9
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v1, v1

    invoke-direct {p0, v0, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0

    :cond_a
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v0, v0

    neg-float v1, v1

    invoke-direct {p0, v0, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0

    :cond_b
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0, v8, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0

    :cond_c
    :goto_3
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    return-object p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f120143

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "getDefault(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "toUpperCase(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    const/high16 v3, 0x42800000    # 64.0f

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mMaxWordWrapWidth:I

    const/4 v4, 0x1

    if-eq v3, v0, :cond_0

    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mMaxWordWrapWidth:I

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_0
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBackgroundPadding:I

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mRadius:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toastBg:I

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setBackgroundColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_STEADY_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mSteadyListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
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

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->animationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public final onRotate(I)V
    .locals 3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
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

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->shouldShowHoldStill(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->enableHoldStill(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f120165

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isUltraResWithSwHwSensorCapture(Lcom/google/zxing/Result;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_8

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;I)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_8

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_STEADY_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mSteadyListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

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

    throw v0
.end method
