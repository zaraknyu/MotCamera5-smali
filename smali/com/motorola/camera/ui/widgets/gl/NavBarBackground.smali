.class public final Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# static fields
.field public static final ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static mDensity:F


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mDualCaptureLayoutSelected:Z

.field public final mFaceBeautyListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mFilterSelected:Z

.field public mIsFoldDualPaneScreen:Z

.field public mIsFoldFullScreen:Z

.field public volatile mIsMultiShot:Z

.field public final mLayoutSwitchListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mReverseBackgroundColor:I

.field public final mSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;

.field public final mShowDualCaptureLayoutComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mShowFilterComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mShowLongExposureComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mShowModeComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;

.field public final mShowProModeSliderListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mTargetVisible:Z

.field public final mTenBitModeBGColor:I

.field public final mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

.field public mTextureHeight:I

.field public final mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

.field public final mZoomListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


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

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDualCaptureLayoutSelected:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsMultiShot:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTargetVisible:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsFoldFullScreen:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsFoldDualPaneScreen:Z

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-direct {p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v1, v3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFaceBeautyListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowFilterComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v4, "typeExpected"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;)V

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowModeComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowProModeSliderListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mZoomListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mLayoutSwitchListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_DUAL_CAPTURE_LAYOUT_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowDualCaptureLayoutComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_LP_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowLongExposureComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0600a1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mReverseBackgroundColor:I

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060040

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTenBitModeBGColor:I

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->navBarBackground:I

    invoke-direct {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    return-void
.end method

.method public static getProperlyHeight(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;Z)F
    .locals 1

    const/high16 v0, 0x42880000    # 68.0f

    if-eqz p1, :cond_0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    mul-float/2addr p0, v0

    return p0

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p0

    sub-float/2addr p1, p0

    add-float/2addr p1, v0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    mul-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    invoke-static {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->getProperlyHeight(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;Z)F

    move-result p0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NavBarBackground"

    return-object p0
.end method

.method public final getTextureHeight()F
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget v2, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/high16 v3, 0x42880000    # 68.0f

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    add-float/2addr v0, v3

    sget v4, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    mul-float/2addr v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v4

    sget v5, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    mul-float v4, v2, v3

    add-float/2addr v0, v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v5

    if-eqz v5, :cond_1

    add-float/2addr v0, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x42ac0000    # 86.0f

    mul-float/2addr v4, v2

    add-float/2addr v0, v4

    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine()F

    move-result v0

    add-float/2addr v0, v3

    sget v3, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    mul-float/2addr v0, v3

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDualCaptureLayoutSelected:Z

    if-eqz v3, :cond_5

    :cond_4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070174

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result p0

    if-eqz p0, :cond_6

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_2

    :cond_6
    const/high16 p0, 0x41600000    # 14.0f

    :goto_2
    mul-float/2addr p0, v2

    add-float/2addr p0, v0

    return p0

    :cond_7
    return v0
.end method

.method public final handleVisibility(ZZ)V
    .locals 13

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTargetVisible:Z

    if-ne p1, v2, :cond_0

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->mAnimationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDualCaptureLayoutSelected:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTargetVisible:Z

    if-ne v2, p1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTargetVisible:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->updateLayout(Z)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    mul-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->getTextureHeight()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTextureHeight:I

    :goto_1
    move v10, v4

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    goto :goto_1

    :goto_2
    if-eqz p2, :cond_4

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f0b000f

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v7, p2

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;

    const/4 p2, 0x0

    invoke-direct {v6, p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;ZI)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget v9, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v5, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {v1, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :cond_4
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v0, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 6

    monitor-enter p0

    const/16 p1, 0xc11

    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v1, 0xb4

    if-ne p2, v1, :cond_0

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070176

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    sget v4, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    const/high16 v5, 0x42880000    # 68.0f

    mul-float/2addr v4, v5

    add-float/2addr v4, p2

    add-float/2addr v4, v1

    sub-float/2addr v3, v4

    float-to-int p2, v3

    iget v1, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTextureHeight:I

    invoke-static {v0, p2, v1, v2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const-string p2, "glScissor"

    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsFoldDualPaneScreen:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTextureHeight:I

    invoke-static {p2, v0, p2, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const-string p2, "glScissor"

    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTextureHeight:I

    invoke-static {v0, v0, p2, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const-string p2, "glScissor"

    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string p1, "glDisable"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsFoldFullScreen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->updateLayout(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsFoldFullScreen:Z

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsFoldDualPaneScreen:Z

    return-void
.end method

.method public final registerListeners$2(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowFilterComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowLongExposureComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_LP_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowModeComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowProModeSliderListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFaceBeautyListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mZoomListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mLayoutSwitchListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mShowDualCaptureLayoutComponentListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_DUAL_CAPTURE_LAYOUT_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->reverseColor$2(Z)V

    :cond_1
    return-void

    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final reverseColor$2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mReverseBackgroundColor:I

    filled-new-array {p0, p0, p0, p0}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->setColors([I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->navBarBackground:I

    filled-new-array {p0, p0, p0, p0}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->setColors([I)V

    return-void
.end method

.method public final setFilterKeepOut(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->getTextureHeight()F

    move-result p0

    sub-float/2addr v1, p0

    float-to-int p0, v1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->LIVE_FILTER_BAR:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    if-eqz p1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, p0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v2, p0}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->setBarKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;)V

    return-void

    :cond_3
    invoke-static {v2}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->getTouchKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v1, p0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mVisible:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowModesSliderState()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->registerListeners$2(Z)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->reverseColor$2(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTenBitModeBGColor:I

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->setColors([I)V

    goto/16 :goto_4

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_4

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_4

    :cond_4
    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isTimerCapture(Lcom/google/zxing/Result;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowModesSliderState()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    goto/16 :goto_4

    :cond_7
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_4

    :cond_8
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->SLIDER_BAR_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v0

    if-ne v4, v0, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v2

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v6}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v1

    goto :goto_3

    :cond_a
    move v6, v2

    :goto_3
    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsMultiShot:Z

    if-nez v0, :cond_13

    if-nez v4, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isZoomSliderSliderState()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    if-nez v5, :cond_13

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    :cond_d
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->showFilterVideoSliderBar(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowModesSliderState()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    :cond_e
    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    goto :goto_4

    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->registerListeners$2(Z)V

    goto :goto_4

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->registerListeners$2(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    goto :goto_4

    :cond_11
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsMultiShot:Z

    goto :goto_4

    :cond_12
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->registerListeners$2(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_13
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 1

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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
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

.method public final updateLayout(Z)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v5, 0x42080000    # 34.0f

    sget v6, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    mul-float/2addr v6, v5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v2

    add-float/2addr v2, v6

    :goto_0
    add-float/2addr v2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->getProperlyHeight(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;Z)F

    move-result v2

    mul-float/2addr v2, v4

    sub-float/2addr v2, v6

    goto :goto_0

    :goto_1
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07006d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070585

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v5

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    sub-float/2addr v1, v5

    :goto_2
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    neg-float v1, v1

    :cond_2
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    monitor-enter v5

    :try_start_0
    iget-boolean v6, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->allowVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v0, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    goto :goto_3

    :cond_3
    div-float/2addr v3, v4

    invoke-virtual {v0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :goto_3
    const/high16 p0, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
