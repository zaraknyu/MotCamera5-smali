.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;
.implements Lcom/motorola/camera/Notifier$Listener;
.implements Lcom/motorola/camera/ui/widgets/gl/FaceUiCompCallback;


# static fields
.field public static final WHITE_COLOR:I


# instance fields
.field public final focusRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

.field public mCameraFacing:I

.field public mCameraToDisplayOrientation:I

.field public mDeferredOrientation:I

.field public mDeferredRotate:Z

.field public final mFaceDetectedCallbacks:Landroid/util/ArraySet;

.field public final mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

.field public final mFaceMatrix:[F

.field public mFacePolicy:Landroidx/room/concurrent/FileLock;

.field public final mFaceTextureList:Ljava/util/ArrayList;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mIsAlwaysShowFaces:Z

.field public mIsFaceDetectModelFull:Z

.field public mLastFaceDetectionTime:J

.field public mLoaded:Z

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mPreviewOffset:Landroid/graphics/Point;

.field public final mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mPreviousFocus:Z

.field public mShouldKeepHidden:Z

.field public final mShowTipsRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

.field public mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTipVisible:Z

.field public final mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static -$$Nest$misPhotoTapAnywhere(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDisableRoiMode(Z)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f0604ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->WHITE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsFaceDetectModelFull:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    new-instance p2, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p2}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    new-instance p2, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p2}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/16 p2, 0x10

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewOffset:Landroid/graphics/Point;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->focusRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-direct {p2, v0, v2}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceDetectedCallbacks:Landroid/util/ArraySet;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShowTipsRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    new-instance p2, Lcom/motorola/camera/SecureDataHelper;

    const/16 v0, 0xb

    invoke-direct {p2, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-direct {p2, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    return-void
.end method


# virtual methods
.method public final animateFocusArea(IZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviousFocus:Z

    if-ne v0, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->focusRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_3

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->runFadeRunnable(Z)V

    goto :goto_1

    :cond_3
    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviousFocus:Z

    return-void
.end method

.method public final declared-synchronized clearFaces()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->renderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->component:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->focusRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mColor:[F

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v5, v3, v2

    aput v5, v4, v2

    const/4 v2, 0x1

    aget v5, v3, v2

    aput v5, v4, v2

    const/4 v2, 0x2

    aget v5, v3, v2

    aput v5, v4, v2

    const/4 v2, 0x3

    aget v3, v3, v2

    aput v3, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 15

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v14}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FaceUiComponent"

    return-object p0
.end method

.method public final getTextPosition$1()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v2

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v7

    iget v8, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v8, v8

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v6, v7, v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFZ)F

    move-result v0

    new-instance v6, Landroid/graphics/Rect;

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v7, v7, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v8, 0x0

    if-eqz p0, :cond_4

    const/16 v2, 0x5a

    if-eq p0, v2, :cond_3

    const/16 v2, 0xb4

    if-eq p0, v2, :cond_2

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    return-object v7

    :cond_1
    iget p0, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr p0, v3

    invoke-virtual {v7, p0, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v7

    :cond_2
    iget p0, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr p0, v3

    invoke-virtual {v7, v8, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v7

    :cond_3
    iget p0, v5, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v3

    invoke-virtual {v7, p0, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v7

    :cond_4
    iget p0, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sub-float/2addr p0, v3

    invoke-virtual {v7, v8, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v7
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_DETECT_ALWAYS_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    new-instance v0, Landroidx/room/concurrent/FileLock;

    invoke-direct {v0, p0}, Landroidx/room/concurrent/FileLock;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Landroidx/room/concurrent/FileLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget v5, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->WHITE_COLOR:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->loadTexture()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f12050e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateLayout$2()V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    iget-object p3, p3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p3, Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 3

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized onPreDraw([F[F[F)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onRotate(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredRotate:Z

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    iput p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateLayout$2()V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFaceMatrix()V
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

    throw p1
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredRotate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredRotate:Z

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->onRotate(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewOffset:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFaceMatrix()V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateLayout$2()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
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

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->IN_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final runFadeRunnable(Z)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    goto :goto_0

    :cond_1
    const/16 v1, 0x190

    :goto_0
    if-eqz p1, :cond_2

    const p1, 0x3f333333    # 0.7f

    :goto_1
    move v7, p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/4 p1, 0x1

    invoke-direct {v3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    int-to-long v4, v1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final sendFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceDetectedCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceDetectedCallback;

    invoke-interface {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceDetectedCallback;->facesDetected([Landroid/hardware/camera2/params/Face;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setTipVisibility(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShowTipsRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_2

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final shouldShowTip()Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->MCF_SF_BOKEH_FACE_DETECTION_OPTIONAL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    array-length v3, v0

    if-ge v3, v2, :cond_1

    goto :goto_2

    :cond_1
    aget v0, v0, v1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_3

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, "SettingsHelper"

    const-string v3, "SFBokeh Face modes is null or empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    :goto_4
    return v1
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFlags()V

    goto/16 :goto_a

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFlags()V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected([Landroid/hardware/camera2/params/Face;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v5, :cond_4

    invoke-static {}, Landroidx/compose/runtime/Latch;->getInstance()Landroidx/compose/runtime/Latch;

    move-result-object v2

    const-string v5, "com.motorola.motcameradesktop"

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/Latch;->getLongVersionForPackage(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0x18c7c

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_6
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_7

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsFaceDetectModelFull:Z

    goto/16 :goto_a

    :cond_7
    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->getSupportedMode()I

    move-result p1

    if-ne p1, v1, :cond_8

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsFaceDetectModelFull:Z

    goto/16 :goto_a

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Landroidx/room/concurrent/FileLock;

    if-eqz p1, :cond_a

    iput-object v2, p1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1b

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_8

    :cond_c
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1, v5}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_6

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected([Landroid/hardware/camera2/params/Face;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v3, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_a

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->IN_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->IN_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto/16 :goto_a

    :cond_12
    :goto_4
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object p1

    if-ne v0, p1, :cond_13

    goto :goto_5

    :cond_13
    move v3, v4

    :goto_5
    if-nez v3, :cond_14

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    :cond_14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    goto/16 :goto_a

    :cond_15
    :goto_6
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    const-string v1, "TIMER"

    invoke-virtual {p1, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_7

    :cond_16
    move v3, v4

    :goto_7
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    if-eqz v0, :cond_18

    :cond_17
    if-eqz v3, :cond_1f

    :cond_18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_19
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected([Landroid/hardware/camera2/params/Face;)V

    :cond_1a
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    goto/16 :goto_a

    :cond_1b
    :goto_8
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDisableRoiMode(Z)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected([Landroid/hardware/camera2/params/Face;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    goto :goto_a

    :cond_1c
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v0, :cond_1e

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_9

    :cond_1d
    move v3, v4

    :cond_1e
    :goto_9
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->FACE_ENABLED:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {p1, v3, v0}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ALLOW_UPDATES:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->shouldShowTip()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1f
    :goto_a
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_b
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->unloadTexture()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput v0, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iput v0, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iput v0, v2, Lcom/motorola/camera/PreviewSize;->height:I

    iput v0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final updateFaceMatrix()V
    .locals 14

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopNaturalOrientationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    int-to-float v6, v6

    invoke-static {v3, v6, v7, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->rotate([FFFFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    if-eqz v3, :cond_6

    const/16 v6, 0xb4

    if-ne v3, v6, :cond_4

    :cond_6
    :goto_3
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_7

    move v2, v1

    :cond_7
    if-eqz v2, :cond_8

    move v3, v4

    goto :goto_4

    :cond_8
    move v3, v5

    :goto_4
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v8}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v6

    :cond_9
    invoke-static {v6}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v8}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_c

    :cond_a
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v8

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v10}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v10

    invoke-static {v8, v10}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v8

    if-eqz v8, :cond_b

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v8

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v10

    div-float/2addr v8, v10

    :goto_6
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v10}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v10

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v11

    invoke-static {v10, v11}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v10

    if-eqz v10, :cond_d

    :goto_7
    move v2, v5

    goto :goto_8

    :cond_d
    if-nez v2, :cond_e

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v2

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v10

    div-float/2addr v2, v10

    :goto_8
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v11, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v10, v11}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v10

    if-eqz v10, :cond_f

    move v2, v8

    move v8, v5

    :cond_f
    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_10
    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v2

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v8

    cmpg-float v2, v2, v8

    if-gez v2, :cond_11

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v2

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v8

    div-float/2addr v2, v8

    move v8, v5

    goto :goto_9

    :cond_11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v2

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v8

    div-float v8, v2, v8

    move v2, v5

    :cond_12
    :goto_9
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v9, v9, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v9, :cond_16

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2, v6, v8}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object v2

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    iget-object v9, v2, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v10, v9, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget v11, v9, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v12, v9, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    invoke-static {v8, v10, v11, v12, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->rotate([FFFFF)V

    iget-object v8, v2, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 v9, 0x42b40000    # 90.0f

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_13

    const/high16 v9, 0x43870000    # 270.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_14

    :cond_13
    iget-object v8, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v9, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v10, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v11, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v8, v9, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_14
    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopNaturalOrientationMode()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v8

    if-nez v8, :cond_15

    goto :goto_a

    :cond_15
    move v4, v5

    :goto_a
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v4, v8

    iget-object v2, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v8, v4

    iget v9, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v4, v2

    iget v2, v6, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float v2, v4, v2

    move v13, v8

    move v8, v2

    move v2, v13

    :cond_16
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    iget v9, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x44fa0000    # 2000.0f

    div-float/2addr v9, v10

    mul-float/2addr v9, v2

    mul-float/2addr v9, v3

    iget v2, v6, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float/2addr v2, v8

    mul-float/2addr v2, v3

    invoke-static {v4, v9, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewOffset:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_17

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-eqz v4, :cond_18

    :cond_17
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-static {v4, v3, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->translate([FFFF)V

    :cond_18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    monitor-enter v3

    :try_start_0
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mFaceMatrix:[F

    array-length v6, v4

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->updateTouchRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iput-boolean v0, v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mMirror:Z

    goto :goto_b

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_19
    :goto_c
    return-void
.end method

.method public final declared-synchronized updateFlags()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected([Landroid/hardware/camera2/params/Face;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ALLOW_UPDATES:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized updateLayout$2()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->getTextPosition$1()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
