.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final SpotColorLevelChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

.field public mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

.field public mHideTooltip:Z

.field public mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

.field public final mModeToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mShowSpotColorLevelTip:Z

.field public mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

.field public final mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

.field public final mVisibilityListeners:Landroid/util/ArraySet;

.field public final mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorTooltip;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorTooltip;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    filled-new-array {v0, v1}, [Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Landroid/util/ArraySet;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    new-instance v1, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v3, "type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v0, 0x1c

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    return-void
.end method


# virtual methods
.method public final animateDismissCurrentTooltip()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v2, 0xc8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final animateDisplayCurrentTooltip()V
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x12c

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final checkTooltips()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final dismissCurrentTooltip()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->markDismissed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->checkTooltips()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HelpTooltips"

    return-object p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
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
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
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

.method public final onKeyEvent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized onPreDraw([F[F[F)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onRotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V
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

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->setDisplayOrientation(I)V

    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/ColorToolbox;->tooltipBackground:I

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    filled-new-array {v4, v4, v4, v4}, [I

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mRadius:F

    iget-object v6, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v3, v5

    mul-float/2addr v3, v4

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mShowCloseIcon:Z

    iput-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mShowClose:Z

    iget-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mUseDynamicViewSize:Z

    iput-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mUseDynamicViewSize:Z

    if-eqz v4, :cond_1e

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_4

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingX:F

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingY:F

    :cond_4
    :goto_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextResource:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v8, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v9, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v9, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const-string v10, " "

    invoke-virtual {v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-boolean v10, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mUseDynamicViewSize:Z

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v14, 0x0

    if-eqz v10, :cond_9

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    const/high16 v10, 0x435c0000    # 220.0f

    mul-float/2addr v10, v4

    const/high16 v15, 0x43440000    # 196.0f

    mul-float/2addr v15, v4

    move/from16 v16, v5

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingX:F

    mul-float/2addr v5, v4

    mul-float v5, v5, v16

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v4

    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mShowClose:Z

    if-eqz v4, :cond_5

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v4, v13

    add-float/2addr v5, v4

    sub-float/2addr v15, v4

    :cond_5
    cmpl-float v4, v5, v10

    if-lez v4, :cond_6

    float-to-int v4, v15

    invoke-virtual {v9, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    :cond_6
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingY:F

    iget v15, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v9, v15

    mul-float v9, v9, v16

    add-float/2addr v9, v4

    float-to-int v4, v9

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v7, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v7

    :cond_7
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v7

    :cond_8
    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v7, v5, v4}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    goto/16 :goto_3

    :cond_9
    move/from16 v16, v5

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->width:I

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingX:F

    mul-float v10, v10, v16

    iget v15, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v10, v15

    float-to-int v10, v10

    sub-int/2addr v5, v10

    int-to-float v5, v5

    iget-boolean v10, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mShowClose:Z

    if-eqz v10, :cond_a

    mul-float/2addr v15, v13

    sub-float/2addr v5, v15

    :cond_a
    float-to-int v5, v5

    invoke-virtual {v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    const/high16 v10, 0x41c00000    # 24.0f

    iget v15, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v15, v10

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v4, v7, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    :cond_b
    int-to-float v4, v4

    add-float/2addr v15, v4

    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v15, v4

    float-to-int v4, v15

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v7, v13

    add-float/2addr v7, v4

    float-to-int v4, v7

    :cond_c
    if-le v4, v5, :cond_e

    sub-int/2addr v4, v5

    new-instance v5, Lcom/motorola/camera/PreviewSize;

    iget-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v7, Lcom/motorola/camera/PreviewSize;->width:I

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    add-int/2addr v7, v4

    invoke-direct {v5, v9, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowDirection:I

    if-ne v5, v12, :cond_d

    invoke-virtual {v3, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    int-to-float v4, v4

    div-float v4, v4, v16

    invoke-virtual {v5, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    invoke-virtual {v3, v11, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_2

    :cond_d
    if-ne v5, v11, :cond_e

    invoke-virtual {v3, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    int-to-float v4, v4

    div-float v4, v4, v16

    invoke-virtual {v5, v14, v4, v14}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    invoke-virtual {v3, v11, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_e
    :goto_2
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    const/high16 v5, 0x42700000    # 60.0f

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v7, v5

    iget-object v5, v8, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v7, v5

    float-to-int v5, v7

    if-le v5, v4, :cond_f

    sub-int/2addr v5, v4

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    iget-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v7, Lcom/motorola/camera/PreviewSize;->width:I

    add-int/2addr v8, v5

    iget v5, v7, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v4, v8, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    :cond_f
    :goto_3
    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v4, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->updateDisplay(ILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowDirection:I

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v8, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    div-float v9, v9, v16

    iget v8, v8, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v8, v8

    div-float v8, v8, v16

    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowThickness:F

    iget v15, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v10, v15

    div-float v10, v10, v16

    iget-object v15, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    move/from16 v17, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v15, v9, v8, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    iget v6, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float v6, v6, v16

    iget v13, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mRadius:F

    mul-float/2addr v6, v13

    invoke-virtual {v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v13

    div-float/2addr v6, v13

    invoke-virtual {v15, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    iget v6, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowDirection:I

    iget-object v13, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-ne v6, v11, :cond_10

    const v6, 0x7f08036f

    invoke-virtual {v13, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    goto :goto_4

    :cond_10
    if-ne v6, v12, :cond_11

    const v6, 0x7f080372

    invoke-virtual {v13, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    goto :goto_4

    :cond_11
    const/4 v15, 0x3

    if-ne v6, v15, :cond_12

    const v6, 0x7f080370

    invoke-virtual {v13, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    goto :goto_4

    :cond_12
    const/4 v15, 0x5

    if-ne v6, v15, :cond_13

    const v6, 0x7f080371

    invoke-virtual {v13, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    :cond_13
    :goto_4
    iget v6, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowDirection:I

    const/4 v15, 0x1

    if-eq v6, v15, :cond_16

    const/4 v15, 0x2

    if-eq v6, v15, :cond_14

    const/4 v15, 0x3

    if-eq v6, v15, :cond_14

    const/4 v15, 0x4

    if-eq v6, v15, :cond_14

    const/4 v15, 0x5

    if-ne v6, v15, :cond_15

    :cond_14
    const/4 v15, 0x1

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    throw v0

    :cond_16
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v13, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    mul-float v6, v10, v16

    invoke-virtual {v13, v6, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget v6, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowDirection:I

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->getMX$1(I)F

    move-result v15

    add-float/2addr v9, v10

    mul-float/2addr v9, v15

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->getMY(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v14

    add-float/2addr v6, v9

    iget v9, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowDirection:I

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->getMY(I)F

    move-result v15

    add-float/2addr v8, v10

    mul-float/2addr v8, v15

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->getMX$1(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v9, v14

    add-float/2addr v9, v8

    invoke-virtual {v13, v6, v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    div-float v8, v8, v16

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    div-float v6, v6, v16

    iget v9, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingX:F

    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float/2addr v9, v10

    iget v13, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingY:F

    mul-float/2addr v13, v10

    neg-float v10, v8

    add-float/2addr v10, v9

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float v15, v15, v16

    add-float/2addr v15, v10

    iget-boolean v12, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mIsRtl:Z

    if-eqz v12, :cond_17

    neg-float v15, v15

    :cond_17
    sub-float v12, v6, v13

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float v11, v11, v16

    sub-float v11, v12, v11

    invoke-virtual {v7, v15, v11, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->x:F

    div-float v11, v11, v16

    add-float/2addr v11, v10

    iget-boolean v10, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mIsRtl:Z

    if-eqz v10, :cond_18

    neg-float v11, v11

    :cond_18
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    div-float v10, v10, v16

    sub-float/2addr v12, v10

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    goto :goto_6

    :cond_19
    move v7, v14

    :goto_6
    sub-float/2addr v12, v7

    invoke-virtual {v4, v11, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1b

    sub-float v4, v8, v9

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    div-float v7, v7, v16

    sub-float/2addr v4, v7

    iget-boolean v7, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mIsRtl:Z

    if-eqz v7, :cond_1a

    neg-float v4, v4

    :cond_1a
    neg-float v7, v6

    add-float/2addr v7, v13

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float v9, v9, v16

    add-float/2addr v9, v7

    invoke-virtual {v5, v4, v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_1b
    iget-boolean v4, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mShowClose:Z

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    mul-float v5, v5, v17

    div-float/2addr v5, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v4

    sub-float/2addr v8, v5

    mul-float v13, v4, v17

    div-float v13, v13, v16

    sub-float/2addr v8, v13

    iget-boolean v5, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mIsRtl:Z

    if-eqz v5, :cond_1c

    neg-float v8, v8

    :cond_1c
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingY:F

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v2, v7

    add-float/2addr v2, v5

    mul-float/2addr v2, v4

    sub-float/2addr v6, v2

    invoke-virtual {v3, v8, v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_1d
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    return-void

    :cond_1e
    const/4 v3, 0x0

    throw v3

    :cond_1f
    :goto_7
    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/google/zxing/Result;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->initialize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->checkTooltips()V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    goto :goto_2

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldDismiss(Lcom/google/zxing/Result;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->dismissCurrentTooltip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->unloadTexture()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
