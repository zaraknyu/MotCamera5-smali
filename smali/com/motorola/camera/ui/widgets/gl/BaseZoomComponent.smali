.class public abstract Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final RATIO_DEC_PATTERN:Ljava/lang/String;

.field public static final RATIO_INT_PATTERN:Ljava/lang/String;

.field public static final RATIO_LABEL_PATTERN:Ljava/lang/String;

.field public static final RATIO_LABEL_PATTERN_TWO_DECIMAL:Ljava/lang/String;

.field public static final RATIO_PATTERN_NO_X:Ljava/lang/String;

.field public static final ZOOM_SLIDER_BG:F


# instance fields
.field public mAllowShowAutoMacro:Z

.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mApplyPreviewDoneListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

.field public mAutoFovSwitch:Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;

.field public mAutoMacroIsMacro:Z

.field public mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

.field public mCurrentRatio:I

.field public mDensity:F

.field public mDragType:I

.field public mDragging:Z

.field public final mDvPostureChangeListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

.field public mEnableHaptic:Z

.field public mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mHapticRatios:Ljava/util/ArrayList;

.field public final mHideToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mHideToggleProSliderListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mIsDvPosture:Z

.field public mIsFoldLandscape:Z

.field public mIsToggleReadyToBeEnabled:Z

.field public mJumpAfterRecording:Z

.field public mJumping:Z

.field public mLastSampleTime:J

.field public mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mPreValue:I

.field public mReadyShowToast:Z

.field public mRecordingZoomChanges:I

.field public final mScaleListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

.field public mScaling:Z

.field public mScrollOffset:F

.field public mSegment:Lcom/motorola/camera/utility/ZoomSegment;

.field public mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mShowFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

.field public mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

.field public mVideoRecording:Z

.field public mZoomModel:Landroidx/compose/runtime/Latch;

.field public mZoomSegments:[F

.field public mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final mZoomSliderTouchListener:Lcom/motorola/camera/PermissionCallback;

.field public final mZoomToggleTouchListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;


# direct methods
.method public static -$$Nest$mhandleDrag(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;F)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragging:Z

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragging:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    sub-long v3, v1, v3

    long-to-float v3, v3

    div-float v3, p1, v3

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    mul-float/2addr p1, v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScrollOffset:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScrollOffset:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getDragBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleZoomWhileSwitching(ZLandroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

.method public static -$$Nest$mhandleDragEnd(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragging:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScrollOffset:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CAMERA_TYPE"

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "VIDEO_RECORDING"

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "ENABLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleZoomWhileSwitching(ZLandroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4, v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->isKnifeSwitchState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput v0, Lcom/motorola/camera/utility/ZoomHelper;->sKnifeSwitchState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f12069a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f12069d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_LABEL_PATTERN:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f12069f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_LABEL_PATTERN_TWO_DECIMAL:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f12069b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f1206a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_PATTERN_NO_X:Ljava/lang/String;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    const/high16 v1, 0x42100000    # 36.0f

    add-float/2addr v0, v1

    sput v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->ZOOM_SLIDER_BG:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    sget-object p2, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mRecordingZoomChanges:I

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsFoldLandscape:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroIsMacro:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAllowShowAutoMacro:Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v4, "type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleProSliderListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mShowFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomToggleTouchListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderTouchListener:Lcom/motorola/camera/PermissionCallback;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScaleListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDvPostureChangeListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mApplyPreviewDoneListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    return-void
.end method

.method public static calZoomSliderSegment(FFI)I
    .locals 6

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr p0, v2

    add-double/2addr p0, v4

    div-double/2addr v0, p0

    int-to-double p0, p2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static getPhysicalType(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH3X:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/utility/PortraitLensUtil;->mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/utility/PortraitLensUtil;->getCameraType(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p0, v0, :cond_8

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontKnifeSwitchAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq p1, p0, :cond_5

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq p1, p0, :cond_5

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :cond_5
    :goto_0
    return-object p0

    :cond_6
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_7
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_8
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p0, v0, :cond_9

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_a
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_b
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_c
    :goto_1
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    return-object p0
.end method

.method public static getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I
    .locals 7

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    invoke-static {p0}, Lcom/motorola/camera/utility/ZoomHelper;->isTraditionProModeZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    if-nez v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getManualUwMappingUIZoomX(F)F

    move-result v0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, v2, :cond_4

    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, p0, v4

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v5

    sget-object v6, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget p0, p0, v6

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    sub-float v1, v5, v1

    sub-float v4, v2, v4

    mul-float/2addr v4, v1

    sub-float/2addr v5, p0

    div-float/2addr v4, v5

    sub-float p0, v2, v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-float/2addr p0, v0

    :cond_3
    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/motorola/camera/utility/ZoomHelper;->shouldDoBackMainZoomMapping(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getManualWideMappingUIZoomX(F)F

    move-result v0

    :cond_5
    :goto_1
    mul-float/2addr v0, v3

    float-to-int p0, v0

    return p0
.end method

.method public static triggerZoomVisibility(Z)V
    .locals 2

    const-string v0, "IS_SELECTED"

    invoke-static {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final animateUpdateLayout(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;IJZ)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateTexturesForFold()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->resetTextureState()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v5, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v0, v4, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v7, v0, v1

    if-eqz p5, :cond_2

    cmpl-float v0, v4, v5

    if-nez v0, :cond_2

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLayoutEndPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void

    :cond_2
    sget-boolean v0, Lcom/motorola/camera/utility/ColorUtil;->enable:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLayoutEndPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void

    :cond_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$6;

    move-object v2, p0

    move-object v8, p1

    move v3, p5

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;ZFFFFLcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v2, v1

    move v6, v5

    move-object v1, v0

    move v5, v4

    move-wide v3, p3

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animateUpdateLayoutForRecording(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x190

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayout(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;IJZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final animateZoomSlider(JZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showSegmentLabel(ZZ)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 6
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v2, 0x11

    invoke-direct {v0, p0, p3, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(Z)V

    .line 8
    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    return-void
.end method

.method public final animateZoomSlider(Z)V
    .locals 10

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 11
    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;

    const/4 v0, 0x1

    invoke-direct {v3, p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;ZI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v6

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v4, 0xc8

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 13
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 14
    iput-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getTexture()Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final checkHapticFeedback(ILcom/motorola/camera/settings/CameraType;Z)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_6

    int-to-float p2, p1

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHapticRatios:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHapticRatios:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPreValue:I

    if-lt v1, v0, :cond_3

    :cond_2
    if-gt p1, v0, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPreValue:I

    if-le v1, v0, :cond_1

    :cond_3
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mEnableHaptic:Z

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->zoomingHapticFeedback()V

    :cond_4
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mEnableHaptic:Z

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mEnableHaptic:Z

    :goto_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPreValue:I

    :cond_6
    return-void
.end method

.method public final checkShowZoom()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final enableZoomTexture(Lcom/motorola/camera/settings/CameraType;)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_RAW_PT_SUPPORT:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->PRO_MODE_NO_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->getActiveZoomEntityMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final enableZoomToggle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    return-void
.end method

.method public final enteringZoomState(Lcom/google/zxing/Result;)V
    .locals 6

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "TYPE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mReadyShowToast:Z

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showLabelMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-ne v2, p1, :cond_6

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setAlpha(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showSegmentLabel(ZZ)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAllowShowAutoMacro:Z

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_5
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mRecordingZoomChanges:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mRecordingZoomChanges:I

    :cond_8
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPreValue:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getSegmentRatios()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x3e8

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v4, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, v4, :cond_e

    const/16 v0, 0x5dc

    :cond_c
    if-gt v0, p1, :cond_d

    move v2, v0

    goto :goto_3

    :cond_d
    move v2, p1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v0, v0, 0x1f4

    if-le v0, p1, :cond_c

    :cond_e
    :goto_4
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHapticRatios:Ljava/util/ArrayList;

    :cond_f
    :goto_5
    return-void
.end method

.method public exitingZoomState()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getHideDelay()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    :cond_1
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    return-void
.end method

.method public abstract getBackSwitchBundle(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;F)Landroid/os/Bundle;
.end method

.method public getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result v5

    const/high16 v6, 0x42080000    # 34.0f

    mul-float/2addr v6, v2

    if-eqz v5, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    neg-float v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x42600000    # 56.0f

    mul-float/2addr v5, v2

    add-float/2addr v6, v5

    :cond_1
    invoke-static {v1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFZ)F

    move-result v1

    add-float v2, v1, v6

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    const/high16 v3, 0x42880000    # 68.0f

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    :cond_2
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v1, :cond_3

    const/high16 v1, 0x42900000    # 72.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr v4, v1

    sub-float/2addr v2, v4

    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v3, 0x41d00000    # 26.0f

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x41e00000    # 28.0f

    add-float/2addr v3, v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr v3, p0

    add-float v2, v3, v0

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, v4

    goto :goto_1

    :cond_5
    move p0, v4

    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object v0
.end method

.method public abstract getCameraType()Lcom/motorola/camera/settings/CameraType;
.end method

.method public abstract getDragBundle()Landroid/os/Bundle;
.end method

.method public final getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    const/high16 v1, 0x42980000    # 76.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr p0, v1

    add-float/2addr p0, v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    add-float/2addr p0, v1

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object v0
.end method

.method public final getMaxUiRatio()I
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result p0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result p0

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result p0

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result p0

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result p0

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result p0

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result p0

    :goto_1
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public final getSegmentLabelLayoutSize()Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 44

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v21, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v22, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v23, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v24, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v25, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v26, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v27, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v28, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v29, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v30, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v31, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v32, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v33, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v34, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v35, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v36, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v37, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v38, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v39, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v40, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v41, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v42, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v43, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v43}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getZoomBarLayoutSize()Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final getZoomButtonLayoutSize()Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 10

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_0
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    invoke-static {v2, v3, v4, v1}, Lcom/motorola/camera/utility/ZoomHelper;->getArcBarGaugeSize(IFZZ)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-direct {v0, v1, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->ITEM_SIZE:F

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_1
    int-to-float v1, v1

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr v6, v3

    div-float/2addr v1, v6

    float-to-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v1, v1

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr v1, v2

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v4, v2, v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFZ)F

    move-result v0

    sub-float v2, v0, v1

    invoke-static {v4}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAspectRatioSquare()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v4, v2

    sub-float v1, v4, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    sub-float/2addr v0, v1

    invoke-interface {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setZoomShortcutBottomYOffset(F)V

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/high16 v0, 0x42880000    # 68.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr p0, v0

    add-float v0, p0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0, v5, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final getZoomValueX$1(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_LABEL_PATTERN:Ljava/lang/String;

    const/16 v2, 0x64

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    if-ge p0, v2, :cond_1

    if-ge p1, v2, :cond_1

    rem-int/lit8 p0, p1, 0xa

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_LABEL_PATTERN_TWO_DECIMAL:Ljava/lang/String;

    :goto_0
    int-to-float p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    div-int/lit8 p0, p1, 0xa

    const/16 v0, 0xa

    if-ne p0, v0, :cond_2

    if-eq p1, v2, :cond_2

    add-int/lit8 p0, p0, 0x1

    :cond_2
    rem-int/lit8 p1, p0, 0xa

    if-nez p1, :cond_3

    div-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    int-to-float p0, p0

    const/high16 p1, 0x41200000    # 10.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleFrameTexture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleJump(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 1
    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomSegment;FZLcom/motorola/camera/settings/CameraType;)V

    return-void
.end method

.method public final handleJump(Lcom/motorola/camera/utility/ZoomSegment;FZLcom/motorola/camera/settings/CameraType;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 2
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    .line 3
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    .line 4
    iget-object v4, v4, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    .line 6
    :cond_0
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 7
    :goto_0
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    if-ne v4, v3, :cond_1

    cmpl-float v6, p2, v8

    if-lez v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v9

    .line 8
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v10

    if-nez v10, :cond_2

    if-nez v2, :cond_2

    if-nez v6, :cond_2

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-wide v13, v11

    .line 10
    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 11
    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    .line 12
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 13
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    .line 14
    invoke-static {v9}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v6

    if-nez v6, :cond_3

    .line 16
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 17
    iput-boolean v9, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    .line 18
    invoke-virtual {v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 19
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 20
    :cond_3
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 21
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 22
    :goto_2
    invoke-static {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getPhysicalType(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    .line 23
    invoke-static {v6, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 25
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FOCAL_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 26
    invoke-static {v1}, Lcom/motorola/camera/utility/PortraitLensUtil;->mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 27
    invoke-static {v6, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 28
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomSegment;)V

    .line 29
    iput-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 30
    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    if-ne v3, v4, :cond_11

    .line 31
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v2

    if-eqz v2, :cond_7

    cmpl-float v2, p2, v8

    if-lez v2, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    goto/16 :goto_5

    :cond_7
    cmpl-float v2, p2, v8

    if-lez v2, :cond_a

    .line 33
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v4, v2, :cond_8

    .line 34
    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    div-float v2, p2, v2

    goto/16 :goto_5

    .line 35
    :cond_8
    invoke-static {v4}, Lcom/motorola/camera/utility/ZoomHelper;->shouldDoBackMainZoomMapping(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManualWide(F)F

    move-result v2

    goto/16 :goto_5

    :cond_9
    :goto_3
    move/from16 v2, p2

    goto/16 :goto_5

    .line 37
    :cond_a
    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne v1, v2, :cond_b

    .line 38
    invoke-static {v4}, Lcom/motorola/camera/utility/ZoomHelper;->shouldDoBackMainZoomMapping(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 39
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 40
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    .line 41
    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManualWide(F)F

    move-result v2

    goto :goto_5

    .line 42
    :cond_b
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result v4

    if-nez v4, :cond_f

    .line 44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v4

    if-nez v4, :cond_f

    if-eq v1, v2, :cond_f

    .line 45
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 46
    sget-boolean v2, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz v2, :cond_c

    goto :goto_4

    .line 47
    :cond_c
    invoke-static {v3, v9}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v2

    .line 48
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 49
    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne v1, v4, :cond_10

    .line 50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result v2

    goto :goto_5

    .line 51
    :cond_d
    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    if-eq v1, v4, :cond_e

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    if-eq v1, v4, :cond_e

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne v1, v4, :cond_10

    .line 52
    :cond_e
    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    .line 53
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    div-float v2, v4, v2

    goto :goto_5

    .line 54
    :cond_f
    :goto_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    .line 55
    :cond_10
    :goto_5
    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->sendJumpEvent(FLcom/motorola/camera/settings/CameraType;)V

    goto/16 :goto_8

    .line 56
    :cond_11
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    .line 57
    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 58
    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v9, v10, v9

    .line 59
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmoothZoomJumpSupported()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 60
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v11

    if-nez v11, :cond_15

    if-eqz v2, :cond_15

    cmpl-float v9, v9, v10

    if-lez v9, :cond_15

    .line 61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v9

    if-nez v9, :cond_15

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v9, :cond_12

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq v4, v11, :cond_14

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-eq v4, v11, :cond_14

    :cond_12
    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v11, :cond_15

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq v4, v11, :cond_14

    if-ne v4, v9, :cond_13

    .line 62
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_13
    sget-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v4, v9, :cond_15

    .line 63
    :cond_14
    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 64
    invoke-virtual {v0, v10, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->sendJumpEvent(FLcom/motorola/camera/settings/CameraType;)V

    goto :goto_8

    .line 65
    :cond_15
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v9

    if-nez v9, :cond_18

    cmpl-float v8, p2, v8

    if-lez v8, :cond_18

    .line 66
    sget-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v4, v8, :cond_16

    .line 67
    sget-object v8, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    :goto_6
    div-float v6, p2, v6

    goto :goto_7

    .line 68
    :cond_16
    sget-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v4, v8, :cond_17

    .line 69
    sget-object v8, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    goto :goto_6

    .line 70
    :cond_17
    invoke-static {v4}, Lcom/motorola/camera/utility/ZoomHelper;->shouldDoBackMainZoomMapping(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 71
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManualWide(F)F

    move-result v6

    goto :goto_7

    :cond_18
    move/from16 v6, p2

    .line 72
    :goto_7
    invoke-virtual {v0, v4, v2, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->sendBackSwitchEvent(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;F)V

    .line 73
    :goto_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 74
    invoke-static {v1}, Lcom/motorola/camera/utility/PortraitLensUtil;->mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getPortraitLensBokehLevelKey(I)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 77
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 78
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_19

    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 80
    :cond_19
    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz v0, :cond_1a

    .line 81
    iget-object v5, v0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->blurLevel:Ljava/lang/Integer;

    :cond_1a
    move-object v1, v5

    :cond_1b
    if-eqz v1, :cond_1d

    .line 82
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 83
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 84
    check-cast v0, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_1c

    .line 86
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    .line 87
    :cond_1c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public final handleZoomWhileSwitching(ZLandroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "START_ZOOM"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string p1, "CAMERA_TYPE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/settings/CameraType;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v2, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->zoom(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_1
    return-void
.end method

.method public hideZoomTextures()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->hideZoomTextures(Z)V

    return-void
.end method

.method public final hideZoomTextures(Z)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    if-eqz v0, :cond_1

    .line 8
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAllowShowAutoMacro:Z

    .line 9
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_4

    .line 11
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    .line 13
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    int-to-float v0, v0

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setPreRotation(FF)V

    .line 14
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    const/4 v5, 0x3

    .line 15
    invoke-virtual {v3, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xb4

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    int-to-float v4, v4

    const/4 v6, 0x0

    .line 18
    invoke-virtual {v3, v4, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 20
    invoke-virtual {v3, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 21
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setPreRotation(FF)V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_5
    if-eqz p1, :cond_6

    .line 24
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final interceptUiEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v1

    const/4 v2, 0x1

    aput v0, v3, v2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getEventTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p1, Landroid/graphics/PointF;

    aget v0, v3, v1

    aget v3, v3, v2

    invoke-direct {p1, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object p0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final isDvPostureState()Z
    .locals 1

    instance-of v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDvPostureAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSegmentSlider()Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move p0, v3

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public final isZoomBarVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isZoomButtonVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderTouchListener:Lcom/motorola/camera/PermissionCallback;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/PermissionCallback;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderTouchListener:Lcom/motorola/camera/PermissionCallback;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/PermissionCallback;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v2, v5, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setZoomShortcutCb(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;)V

    new-instance v0, Landroidx/compose/runtime/Latch;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-direct {v0, v2}, Landroidx/compose/runtime/Latch;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Latch;->setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomToggleTouchListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-direct {v2, v5, p0, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;Landroidx/compose/runtime/Latch;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->loadTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v6, v6

    invoke-virtual {v2, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setPreRotation(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v2, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v2, v3, v7, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FI)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    const/high16 v4, 0x42f00000    # 120.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO_SUPPORT_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v5, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    const/high16 v4, -0x3cd60000    # -170.0f

    mul-float/2addr v3, v4

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->onSelected(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onRotate(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoFovSwitch:Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4

    :cond_3
    move v1, v5

    :cond_4
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mLandscape:Z

    if-eq v1, v2, :cond_5

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mLandscape:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->handleFovSwitch()V

    :cond_5
    iput-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    sput v5, Lcom/motorola/camera/utility/ZoomHelper;->sKnifeSwitchState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v5

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final needVerticalLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsFoldLandscape:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPreDraw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->onPreDraw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onPreDraw([F[F)V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onRotate(I)V
    .locals 11

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit16 v0, p1, 0xb4

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setDisplayOrientation(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    int-to-float v1, v0

    sub-float/2addr v1, v7

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v3, :cond_2

    add-float/2addr v1, v4

    :cond_2
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    sub-float/2addr v1, v4

    :cond_3
    add-float v8, v7, v1

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;

    const/4 v1, 0x0

    invoke-direct {v4, v8, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;-><init>(FILjava/lang/Object;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v5, 0x12c

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getTexture()Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    filled-new-array {v1, v4, v5}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoFovSwitch:Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;

    if-eqz p0, :cond_6

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mLandscape:Z

    if-eq p1, v0, :cond_6

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mLandscape:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->handleFovSwitch()V

    :cond_6
    :goto_3
    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLandscapeLayout()Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsFoldLandscape:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showLabelMode()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0025

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v3, p1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayout(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;IJZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateTexturesForFold()V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public registerSubFsmListeners$4(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public resetTextureState()V
    .locals 0

    return-void
.end method

.method public final sendBackSwitchEvent(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;F)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/motorola/camera/utility/ZoomHelper;->sKnifeSwitchState:I

    :cond_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getBackSwitchBundle(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;F)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, p3, p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showSegmentLabel(ZZ)V

    :cond_1
    return-void
.end method

.method public final sendJumpEvent(FLcom/motorola/camera/settings/CameraType;)V
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_UI_ANALYTICS:Lcom/motorola/camera/settings/SettingsManager$Key;

    float-to-int v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMinUIZoomX()F

    move-result v2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    mul-float/2addr v2, p1

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->shouldDoBackMainZoomMapping(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->getManualWideMappingUIZoomX(F)F

    move-result v2

    goto :goto_0

    :cond_4
    move v2, p1

    :goto_0
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v3, :cond_5

    mul-float v3, p1, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    int-to-double v7, v3

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mRecordingZoomChanges:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mRecordingZoomChanges:I

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmoothZoomJumpSupported()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-nez v3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    :goto_1
    move v3, v1

    :goto_2
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p0, v2, p2, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    :goto_3
    const-string v2, "CAMERA_TYPE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "ZOOM_JUMP_X"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "VIDEO_RECORDING"

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "SMOOTH_ZOOM_JUMP"

    invoke-virtual {v0, p1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v2, v0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMacroCameraWithWideSupported()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-eq p2, p1, :cond_a

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showSegmentLabel(ZZ)V

    :cond_b
    return-void
.end method

.method public final setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_UI_ANALYTICS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final setZoomVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setupZoomTextures()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->hideZoomTextures()V

    :goto_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V
.end method

.method public abstract setupZoomTextures()V
.end method

.method public abstract showLabelMode()Z
.end method

.method public final showSegmentLabel(ZZ)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x6

    iput p0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v0, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    if-eqz p2, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 p2, 0x13

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x7d0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public declared-synchronized unloadTextures()V
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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumpAfterRecording:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final updateKnifeSwitchStateWhileEnteringIdle()V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->isKnifeSwitchState(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragging:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScaling:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sput v2, Lcom/motorola/camera/utility/ZoomHelper;->sKnifeSwitchState:I

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    sput v1, Lcom/motorola/camera/utility/ZoomHelper;->sKnifeSwitchState:I

    :goto_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_3
    return-void
.end method

.method public final updateLabel(Lcom/motorola/camera/utility/ZoomSegment;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$7;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f120225

    goto :goto_0

    :pswitch_1
    const p1, 0x7f120221

    goto :goto_0

    :pswitch_2
    const p1, 0x7f120223

    goto :goto_0

    :pswitch_3
    const p1, 0x7f120224

    goto :goto_0

    :pswitch_4
    const p1, 0x7f120222

    goto :goto_0

    :pswitch_5
    const p1, 0x7f120220

    goto :goto_0

    :pswitch_6
    const p1, 0x7f120226

    goto :goto_0

    :pswitch_7
    const p1, 0x7f120227

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setLensText(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final updateLayoutEndPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isDvPostureState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updatePostTranslation(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_1
    return-void
.end method

.method public final updateTextureLayoutForFold(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->needVerticalLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/high16 v0, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->needVerticalLayout()Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 p2, p2, 0x5a

    rem-int/lit16 p2, p2, 0x168

    :cond_2
    int-to-float p0, p2

    invoke-virtual {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method

.method public final updateTexturesForFold()V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateTextureLayoutForFold(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updateLayoutSize(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updatePostTranslation(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateTextureLayoutForFold(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    :cond_1
    return-void
.end method

.method public final updateToggleTextureBgStyle()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    return-void
.end method

.method public abstract updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V
.end method

.method public visibleToggleTexture()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p0

    return p0
.end method

.method public final zoomingHapticFeedback()V
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ZOOM_HAPTIC_FEEDBACK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    if-nez v0, :cond_0

    const/4 v0, 0x6

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    :cond_0
    return-void
.end method
