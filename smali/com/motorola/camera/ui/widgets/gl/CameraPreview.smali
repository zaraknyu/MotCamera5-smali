.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;
.implements Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;


# static fields
.field public static final VIEW_MATRIX:[F

.field public static mDebugId:I

.field public static mDrawCount:I

.field public static mDrawId:I

.field public static mDump:Z

.field public static mDumpCount:I

.field public static mDumpFolder:Ljava/io/File;

.field public static mFrameCount:I

.field public static mMaxDumpCount:I


# instance fields
.field public mAlpha:F

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBlurTexSize:Landroid/graphics/PointF;

.field public mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

.field public mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

.field public mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

.field public mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

.field public mCaptureType:I

.field public mCliGestureRecording:Z

.field public mContinuousBlur:Z

.field public mDelayUpdateTexture:Z

.field public final mDensity:F

.field public mDrawIsDualCapture:Z

.field public mDrawIsSuperMode:Z

.field public mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

.field public mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

.field public mEnableUiEvent:Z

.field public mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

.field public mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

.field public mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mFromMode:I

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

.field public mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

.field public mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

.field public mModeSwitchTargetRatio:F

.field public mOrientation:I

.field public mPipZoomRatio:I

.field public final mPreviewChangeList:Ljava/util/ArrayList;

.field public final mPreviewDiffList:Ljava/util/ArrayList;

.field public mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mProcessUiEvent:Z

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public mSkipGestureDetector:Z

.field public mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mStoredPreviewHolder:Lcom/motorola/camera/CameraKpi;

.field public mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

.field public mSubDisplayFullHeight:I

.field public mSubDisplayFullWidth:I

.field public mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

.field public final mSubDisplayLines:Ljava/util/ArrayList;

.field public mSubDisplayTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

.field public mToMode:I

.field public final mUiEventScale:F

.field public mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

.field public mVideoRecording:Z

.field public mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 3

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Lcom/motorola/camera/CameraKpi;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/CameraKpi;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p1, 0x7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayLines:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPipZoomRatio:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    new-instance p1, Landroid/view/GestureDetector;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Landroid/view/ScaleGestureDetector;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    return-void
.end method

.method public static clearOldDumpedPreviewFrames()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "^(In|Out)put[0-9]+(_ts-[0-9]+)?\\.yuv$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getPreviewSize()Lcom/motorola/camera/PreviewSize;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    return-object v0
.end method

.method public static getViewMatrixOrigin()V
    .locals 11

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public static isModeSwitchUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized animateCapture()V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/4 v0, 0x0

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    goto :goto_0

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0xc8

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
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

.method public final animateHidePreview()V
    .locals 9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v5

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x64

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final applyPreviewChange(Lcom/motorola/camera/CameraKpi;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    return-void
.end method

.method public final applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    .line 2
    iget-object v1, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float v6, v2, v13

    .line 3
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float v8, v1, v13

    const/4 v14, 0x0

    cmpl-float v1, v6, v14

    if-eqz v1, :cond_17

    cmpl-float v1, v8, v14

    if-nez v1, :cond_0

    goto/16 :goto_11

    .line 4
    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(I)V

    .line 5
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    neg-float v5, v6

    neg-float v7, v8

    const v9, 0x419feb85    # 19.99f

    const/high16 v10, 0x42100000    # 36.0f

    const/4 v4, 0x0

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 6
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 7
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 8
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_LANDSCAPE_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    .line 9
    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    .line 10
    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 12
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v15

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, -0x3d4c0000    # -90.0f

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 14
    :cond_1
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    const v9, 0x419feb85    # 19.99f

    const/high16 v10, 0x42100000    # 36.0f

    const/4 v4, 0x0

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 15
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    move v15, v6

    move/from16 v16, v8

    .line 16
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 17
    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    div-float v1, v15, v13

    .line 19
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 20
    invoke-static {v2, v1, v14, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->translate([FFFF)V

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 22
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDualPaneVMatrix:[F

    const/16 v3, 0x10

    .line 23
    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIEW_SIZE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 25
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 26
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_0

    :cond_3
    move/from16 v1, p2

    .line 27
    :goto_0
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->getPreviewOffset()F

    move-result v7

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v11

    const/4 v8, 0x2

    if-eqz v11, :cond_4

    .line 29
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v2}, Lcom/motorola/camera/PreviewSize;-><init>()V

    move-object v9, v2

    goto :goto_3

    .line 30
    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v3}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 31
    iget-object v4, v12, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 32
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 33
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 34
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 35
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    .line 37
    :cond_5
    iget-object v4, v12, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/PreviewSize;

    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v4, v5}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 39
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 40
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 41
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 42
    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 43
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    .line 44
    iget-object v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    .line 45
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    goto :goto_1

    .line 46
    :cond_6
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 47
    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 48
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    .line 49
    iget-object v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    .line 50
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    .line 51
    div-int/2addr v4, v8

    .line 52
    :goto_1
    iget v5, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    .line 53
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 54
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 55
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    .line 56
    iget-object v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    .line 57
    iget v2, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v13

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 58
    iput v2, v3, Lcom/motorola/camera/PreviewSize;->height:I

    :cond_7
    :goto_2
    move-object v9, v3

    :goto_3
    if-eqz v11, :cond_8

    .line 59
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    :goto_4
    move-object v10, v2

    goto :goto_5

    .line 60
    :cond_8
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    goto :goto_4

    :goto_5
    const/4 v2, 0x4

    if-eqz v1, :cond_a

    .line 61
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 62
    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 63
    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 64
    invoke-virtual {v10, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v5

    .line 65
    invoke-virtual {v10, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v17

    if-eqz v11, :cond_9

    .line 66
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v6, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/PreviewSize;

    .line 67
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v8

    .line 68
    invoke-virtual {v3, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->applyPreviewChange$1(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_6

    .line 69
    :cond_9
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v6, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 70
    :goto_6
    invoke-virtual {v10, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    move v8, v7

    .line 71
    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    move-object/from16 v20, v9

    .line 72
    invoke-virtual {v10, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v9

    move v3, v4

    const/4 v4, 0x0

    move-object v14, v10

    move v10, v1

    move-object v1, v14

    move v14, v13

    move v13, v2

    move-object/from16 v2, v17

    move/from16 v17, v14

    const/16 v14, 0x8

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 74
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 75
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f0b0025

    .line 78
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v13, v15

    int-to-long v14, v4

    .line 79
    new-instance v21, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v22, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;

    move v4, v8

    move-object v8, v5

    move v5, v4

    move v4, v3

    move/from16 v29, v13

    move-wide/from16 v23, v14

    move-object/from16 v13, v20

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v3, v2

    move-object v2, v6

    move v6, v10

    move-object v10, v1

    move-object v1, v0

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFFLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Rotation;Lcom/motorola/camera/ui/widgets/gl/Rotation;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    move-object v0, v1

    move v3, v5

    move-object v1, v10

    const/16 v27, 0x2

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v21 .. v28}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    move-object/from16 v4, v21

    .line 80
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    filled-new-array {v1, v5, v6, v7}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    .line 81
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 82
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    move-object v6, v2

    goto :goto_9

    :cond_a
    move v3, v7

    move v14, v8

    move-object v1, v10

    move/from16 v17, v13

    move/from16 v29, v15

    move v15, v6

    move-object v13, v9

    if-eqz v11, :cond_b

    .line 83
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v4, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/PreviewSize;

    .line 84
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    .line 85
    invoke-virtual {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->applyPreviewChange$1(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    :goto_7
    const/4 v2, 0x4

    goto :goto_8

    .line 86
    :cond_b
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v4, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2, v4, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_7

    .line 87
    :goto_8
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    .line 88
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v9

    .line 89
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 90
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 91
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    move-object v7, v5

    .line 92
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v5

    move-object v2, v7

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    :goto_9
    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    if-nez v11, :cond_11

    .line 94
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 95
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v5, :cond_f

    .line 96
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    .line 97
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    .line 98
    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v8

    int-to-float v10, v7

    mul-float/2addr v8, v10

    float-to-int v8, v8

    const/high16 v18, 0x41800000    # 16.0f

    move/from16 v19, v2

    .line 99
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float v2, v2, v18

    float-to-int v2, v2

    .line 100
    new-instance v15, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v15, v7, v8}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 101
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v15, v13, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)V

    .line 102
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v1, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    .line 103
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result v1

    if-eqz v1, :cond_c

    div-float v1, v10, v17

    sub-float v1, v29, v1

    :goto_a
    int-to-float v15, v2

    sub-float/2addr v1, v15

    goto :goto_b

    .line 104
    :cond_c
    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float v15, v10, v17

    sub-float/2addr v1, v15

    goto :goto_a

    .line 105
    :goto_b
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 106
    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v15

    invoke-static {v15}, Lcom/motorola/camera/utility/ColorUtil;->isFullSizeAspectRatio(F)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 107
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 108
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 109
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 110
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v2

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v2, v15

    sub-float v2, v16, v2

    int-to-float v15, v8

    div-float v15, v15, v17

    sub-float/2addr v2, v15

    move/from16 v21, v13

    goto :goto_c

    .line 112
    :cond_d
    iget v15, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v15, v3

    move/from16 v21, v13

    int-to-float v13, v8

    div-float v13, v13, v17

    sub-float/2addr v15, v13

    int-to-float v2, v2

    sub-float v2, v15, v2

    .line 113
    :goto_c
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v15, 0x0

    invoke-direct {v13, v1, v2, v15}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 114
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v2, 0x4

    .line 115
    invoke-virtual {v1, v2, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 116
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    .line 117
    invoke-virtual {v1, v2, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 118
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    .line 119
    invoke-virtual {v1, v2, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 120
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float v2, v2, v21

    add-float v15, v2, v10

    move/from16 p2, v4

    int-to-float v4, v8

    add-float/2addr v2, v4

    invoke-virtual {v1, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->setSize(FF)V

    .line 121
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 122
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 123
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 124
    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v2

    mul-float/2addr v10, v1

    .line 125
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPipZoomRatio:I

    int-to-float v1, v1

    mul-float/2addr v10, v1

    float-to-int v1, v10

    .line 126
    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-eqz v2, :cond_e

    .line 127
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    int-to-float v10, v4

    invoke-virtual {v2, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->setSize(FF)V

    .line 128
    :cond_e
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 129
    iput-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 130
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullWidth:I

    .line 131
    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullHeight:I

    .line 132
    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->layoutSubDisplayLines(II)V

    goto :goto_d

    :cond_f
    move/from16 v19, v2

    move/from16 p2, v4

    .line 133
    :cond_10
    :goto_d
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v2, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/PreviewSize;

    iget-object v4, v12, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 134
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const v2, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    .line 135
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v1, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 137
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    .line 138
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v2

    div-float v2, v2, v17

    sub-float v2, v29, v2

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 139
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 140
    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 141
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v4

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v4, v5

    sub-float v8, v16, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    .line 143
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v4

    div-float v4, v4, v17

    sub-float/2addr v8, v4

    const/4 v15, 0x0

    .line 144
    invoke-virtual {v1, v2, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_e

    :cond_11
    move/from16 v19, v2

    move/from16 p2, v4

    .line 145
    :goto_e
    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 146
    iget v4, v9, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    cmpl-float v5, v4, v19

    if-eqz v5, :cond_12

    const/high16 v5, 0x43870000    # 270.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_13

    :cond_12
    move/from16 v30, v2

    move v2, v1

    move/from16 v1, v30

    .line 147
    :cond_13
    new-instance v4, Landroid/graphics/Rect;

    mul-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v15, 0x0

    invoke-direct {v4, v15, v15, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 148
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    div-int/2addr v1, v14

    goto :goto_f

    .line 149
    :cond_14
    iget-object v1, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    .line 150
    :goto_f
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 151
    iget-object v2, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float v2, v2, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 152
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 153
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 154
    iput-object v4, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 155
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 156
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 157
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean v2, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-eqz v2, :cond_15

    goto :goto_10

    .line 159
    :cond_15
    iget-object v2, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v3, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    .line 161
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v6, v5

    .line 162
    invoke-static {v6}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    const/16 v18, 0x0

    aput-object v5, v3, v18

    .line 163
    iget-object v3, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    .line 164
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v6, v5

    .line 165
    invoke-static {v6}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    aput-object v5, v3, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit v2

    .line 167
    iput-object v4, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    goto :goto_10

    :catchall_0
    move-exception v0

    .line 168
    monitor-exit v2

    throw v0

    :cond_16
    :goto_10
    if-eqz v11, :cond_17

    .line 169
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    move/from16 v1, p2

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onScrollEnd(ZZ)V

    :cond_17
    :goto_11
    return-void
.end method

.method public final applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0, p5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p4, p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p3, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget p2, p5, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 p4, 0x42b40000    # 90.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_1

    const/high16 p4, 0x43870000    # 270.0f

    cmpl-float p2, p2, p4

    if-nez p2, :cond_2

    :cond_1
    iget p2, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p5, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p3, p2, p4, p5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p2, v2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p4

    invoke-virtual {p2, v2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p4, 0x6

    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 p5, 0x40000000    # 2.0f

    mul-float/2addr p4, p5

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p3, p5

    invoke-virtual {p2, p4, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_3
    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object p2, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIEW_SIZE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_TEN_BIT_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    sget p4, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->updateSurfaceOrientation(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz p2, :cond_5

    sget p4, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->updateSurfaceOrientation(I)V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p0, :cond_6

    sget p2, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p4, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->updateSurfaceOrientation(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->updateSurfaceOrientation(I)V

    :cond_6
    invoke-virtual {p1, p3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final declared-synchronized checkPreviewSizeForAnim()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
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

.method public final copyFrameToOffscreen(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;F[F[F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const v0, 0x8d40

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v2

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v0, 0x4100

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p2, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p2

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, v0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    return-void
.end method

.method public final declared-synchronized copyPreviewFrame(Lcom/google/zxing/Result;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v8, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v9, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array/range {v2 .. v9}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
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

.method public final darkenPreview(Z)V
    .locals 9

    if-eqz p1, :cond_0

    const p1, 0x3ebd70a4    # 0.37f

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    cmpl-float p1, v5, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v2, 0xc8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    invoke-virtual {p1, v0, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    return-void
.end method

.method public final declared-synchronized deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 14

    const-string v0, "deferInitSurface dur:"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_STAR_TRAIL_SURFACE_LOAD:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->checkPreviewSizeForAnim()V

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v6

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSlavePreviewImageReader()Landroid/media/ImageReader;

    move-result-object v7

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSubPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iput v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    :goto_1
    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iput-boolean v1, v8, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-virtual {v8, v6, v9, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iput-boolean v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-virtual {v5, v7, v9, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto/16 :goto_5

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewProcessingNeeded()Z

    move-result v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_5

    sget-object v12, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_MONO_ONLY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v10, v12}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v13

    goto :goto_2

    :cond_5
    move v10, v1

    :goto_2
    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iput-boolean v11, v12, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v8, v12, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto :goto_3

    :cond_6
    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v12, v8, v9, v10, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iput-boolean v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v13, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iput-boolean v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-virtual {v6, v10, v9, v13, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    :cond_8
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v6, :cond_9

    iput-boolean v13, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getSubPreviewPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v7, v8, v6, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableFpsReporting()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;

    const/4 v6, 0x1

    invoke-direct {v5, p0, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz p1, :cond_b

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateViewfinder()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p1, :cond_c

    const-string p1, "CameraPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    monitor-exit p0

    return-void

    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_SURFACE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIEW_SIZE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    return-void
.end method

.method public final doSurfaceSplitChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    return-void
.end method

.method public final declared-synchronized enableFpsReporting()V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_TRACE:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v6, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameTimeEnable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iput-boolean v4, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameTimeEnable:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_1
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0

    :goto_2
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method

.method public final declared-synchronized getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_2
    :try_start_3
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v1, 0x2

    invoke-direct {p2, v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 37

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v21, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v22, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v23, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v24, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v25, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v26, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v27, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v28, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v29, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v30, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v31, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v32, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v33, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v34, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v35, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v36, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v36}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraPreview"

    return-object p0
.end method

.method public final handleTenBitModeState(Lcom/google/zxing/Result;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_TEN_BIT_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_TEN_BIT_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v3, :cond_13

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getTenBitSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v11, v12}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v11

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v1, v12, :cond_0

    move v12, v8

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    sget-object v13, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v1, v13, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v13, "FROM_FACING"

    const/4 v14, -0x1

    invoke-virtual {v3, v13, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v14, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v13

    :cond_2
    if-eqz v1, :cond_4

    if-ne v13, v8, :cond_3

    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    move v15, v8

    goto :goto_2

    :cond_4
    move v15, v13

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v16

    const-string v10, "MODE"

    invoke-virtual {v3, v10, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v14, :cond_5

    move/from16 v10, v16

    :cond_5
    if-nez v1, :cond_7

    if-nez v11, :cond_7

    if-eqz v12, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "SRC_MODE"

    invoke-virtual {v3, v1, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 v1, v16

    :goto_4
    if-ne v1, v14, :cond_8

    move/from16 v1, v16

    :cond_8
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    sget-object v14, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_ENTER_TEN_BIT_MODE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v2, v14, :cond_a

    if-nez v2, :cond_9

    invoke-static {v10, v15, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode(IIZ)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    move v10, v8

    :goto_6
    sget-object v14, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_EXIT_TEN_BIT_MODE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v2, v14, :cond_c

    if-nez v2, :cond_b

    invoke-static {v1, v13, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode(IIZ)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    move v0, v8

    :goto_8
    if-eqz v11, :cond_e

    const-string v1, "SETTING"

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const/4 v11, 0x0

    :cond_e
    invoke-virtual {v9, v0, v6}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    invoke-virtual {v9, v10, v7}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    iget-object v0, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v11, :cond_11

    if-nez v12, :cond_11

    :cond_f
    iget-object v0, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :cond_11
    :goto_9
    if-eqz v8, :cond_12

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isModeSwitchUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_12
    return v8

    :cond_13
    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v0, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_14
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto/16 :goto_b

    :cond_15
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_16
    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isModeSwitchUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto/16 :goto_c

    :cond_17
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCliGestureRecording:Z

    iget-object v5, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v13, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v14, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v15, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v16, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array/range {v10 .. v16}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v1, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_a

    :cond_18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_a
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v0, v8, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    invoke-virtual {v9, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual {v9, v6}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    return v8

    :cond_1a
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_e

    :cond_1c
    :goto_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v3

    invoke-virtual {v9, v3, v7}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v5

    iput-boolean v5, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isBlockedMode:Z

    :cond_1d
    iget-object v3, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    return v8

    :cond_1e
    :goto_c
    iget-object v3, v9, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    goto :goto_d

    :cond_1f
    const/4 v5, 0x0

    :goto_d
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEN_BIT_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    if-eqz v0, :cond_23

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->applyPreviewChange$1(Z)V

    return v8

    :cond_20
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v4, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->init()V

    :cond_21
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v0, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    return v8

    :cond_22
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isModeSwitchUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_23
    return v8

    :goto_e
    return v17
.end method

.method public final isDualCaptureTextureEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final layoutSubDisplayLines(II)V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v4, v2, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v6, v3, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v7, v5, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullHeight:I

    sub-int/2addr v5, p2

    int-to-float p2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p2, v5

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullWidth:I

    sub-int/2addr v8, p1

    int-to-float p1, v8

    div-float/2addr p1, v5

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v8, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    div-float/2addr p2, v5

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    invoke-virtual {v8, v9, p2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullHeight:I

    neg-int v11, v11

    int-to-float v11, v11

    div-float/2addr v11, v5

    add-float/2addr v11, p2

    invoke-virtual {v10, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    const/4 v11, 0x4

    invoke-virtual {v8, v11, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v8, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v8, v9, p2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v4, p2

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    invoke-virtual {v8, v11, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {p2, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    div-float/2addr p1, v5

    invoke-virtual {p2, p1, v9, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullWidth:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v4, p1

    invoke-virtual {v1, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    invoke-virtual {p2, v11, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {p2, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p2, p1, v9, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullWidth:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    sub-float/2addr p0, p1

    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    invoke-virtual {p2, v11, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 18

    move-object/from16 v5, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraPreviewL"

    const/4 v7, 0x7

    invoke-static {v7, v0}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    const-string v1, "owner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    instance-of v2, v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/viewmodel/internal/DefaultViewModelProviderFactory;->INSTANCE:Landroidx/lifecycle/viewmodel/internal/DefaultViewModelProviderFactory;

    :goto_0
    instance-of v3, v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_1
    const-string/jumbo v3, "store"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "factory"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultCreationExtras"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v3, v1, v2, v0}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getViewModel$lifecycle_viewmodel_release(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v2, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, v5, v1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v3, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomAssistWindowSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    :cond_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    const/4 v1, 0x2

    invoke-direct {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    const/4 v1, 0x3

    invoke-direct {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_PREVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_75_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, v1, v2, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v2

    iget-object v3, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->loadTexture()V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v2

    iget-object v3, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->loadTexture()V

    :cond_5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    iget v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v0, v1

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mLineWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v4

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    monitor-enter v0

    monitor-exit v0

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    iget v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v0, v1

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mLineWidth:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v4

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    monitor-enter v0

    monitor-exit v0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    :goto_3
    const/4 v4, 0x4

    if-ge v0, v4, :cond_6

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f060452

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-direct {v4, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iget v9, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v9, v1

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget-object v9, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayLines:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_7
    :goto_4
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    const/16 v9, 0x10

    invoke-static {v0, v8, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    :cond_8
    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v1, v2

    int-to-float v0, v0

    div-float v15, v0, v2

    new-array v10, v9, [F

    invoke-static {v10, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-float v12, v13

    neg-float v14, v15

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, 0x41a00000    # 20.0f

    const/4 v11, 0x0

    invoke-static/range {v10 .. v17}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->loadTexture()V

    :cond_9
    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->loadTexture()V

    iput v7, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->clear()V

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerListener$7(Z)V

    new-instance v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-direct {v1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;-><init>()V

    iput-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v1, :cond_a

    sput v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    sput v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawCount:I

    sput v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawId:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sput v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDebugId:I

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v10, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const-string v11, "0"

    const v13, -0xff0100

    const/4 v14, 0x0

    const/high16 v12, 0x42600000    # 56.0f

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v9, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    const/high16 v3, 0x43660000    # 230.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v6, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_a
    invoke-virtual {v5, v8, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    const-string v1, "CameraPreviewL"

    invoke-static {v7, v1}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v0

    :cond_b
    :try_start_9
    const-string v0, "Local and anonymous classes can not be ViewModels"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_5
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v0, 0x1

    invoke-static {p3, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z[F[F)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const v1, 0x3cf5c28f    # 0.03f

    cmpg-float p3, p3, v1

    const/16 v1, 0x303

    if-ltz p3, :cond_0

    const/4 p3, 0x0

    invoke-static {v0, p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    :goto_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_1
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_3
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_5
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    const/4 p3, -0x1

    invoke-static {p3}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const-string p3, "glStencilMask"

    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 p3, 0xb90

    invoke-static {p3}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string p3, "glDisable"

    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayLines:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_2

    :cond_6
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_7
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-nez v0, :cond_9

    iget-boolean v0, p3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isBlockedMode:Z

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    iget-object v0, p3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p3}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->savePreviewPixelsIntoBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_9
    :goto_3
    sget-boolean p3, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz p3, :cond_a

    sget p3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/16 v0, 0xf

    if-ge p3, v0, :cond_a

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    const-string p1, "CameraPreview"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DEBUG_FRAME_IDX draw "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " display:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onDrawFbo([F[F[F)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_1
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_2
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_4
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_6
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_7
    :goto_2
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v9, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v9, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :goto_3
    invoke-virtual {v3, v7}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_4

    :cond_a
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_4
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    :cond_b
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-nez v3, :cond_c

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-nez v3, :cond_c

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_c
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_d
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/16 v5, 0x10

    new-array v9, v5, [F

    iget v7, v2, Landroid/graphics/Point;->x:I

    neg-int v10, v7

    int-to-float v10, v10

    const/high16 v17, 0x40000000    # 2.0f

    div-float v11, v10, v17

    int-to-float v7, v7

    div-float v12, v7, v17

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v7, v2

    int-to-float v7, v7

    div-float v13, v7, v17

    int-to-float v2, v2

    div-float v14, v2, v17

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x42100000    # 36.0f

    const/4 v10, 0x0

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    new-array v2, v5, [F

    invoke-static {v0, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v0, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v2, v0, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->translate([FFFF)V

    invoke-static {v2, v4, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    invoke-virtual {v1, v3, v0, v2, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->copyFrameToOffscreen(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;F[F[F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda9;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda9;->onCopyDone()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onPreDraw([F[F[F)Z
    .locals 5

    const-string p3, "DEBUG_FRAME_IDX onPreDraw "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onPreDraw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onPreDraw([F[F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onPreDraw([F[F)V

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onPreDraw([F[F)V

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    sget p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/16 v0, 0xf

    if-ge p1, v0, :cond_4

    if-gtz p1, :cond_3

    sget v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawCount:I

    add-int/2addr v0, p2

    sput v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawCount:I

    :cond_3
    sget v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawId:I

    add-int/2addr v0, p2

    sput v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDebugId:I

    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    const-string p1, "CameraPreview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :cond_7
    :goto_1
    monitor-exit p0

    return p2

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onRotate(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-object v1, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setDisplayOrientation(I)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_5

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->setDisplayOrientation(I)V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    iput p1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->orientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onSATFallback(ZZ)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_f

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_TEN_BIT_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_1

    new-instance p1, Lcom/motorola/camera/CameraKpi;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIEW_SIZE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/motorola/camera/CameraKpi;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_SURFACE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_5
    new-instance v3, Lcom/motorola/camera/CameraKpi;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->viewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_7

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz p1, :cond_8

    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/CameraKpi;

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/CameraKpi;

    iget-object p1, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    iput v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    iput p2, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_c
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_e

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz p1, :cond_e

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->shouldHandleUIEvent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->shouldProcessUIEvent(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    :cond_3
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v3, :cond_5

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onScrollEnd(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return v3

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v2, 0x3b

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    const-string v5, "SWITCH_CASE"

    const-string v6, "USE_CASE"

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v8, "MODE_DIRECTION"

    const-string v9, "MODE"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "DUAL_CAPTURE_PREVIEW_TYPE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updatePreviewType(I)V

    return-void

    :pswitch_1
    invoke-virtual {v0, v9, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v0, v6, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "DUAL_CAPTURE_LAYOUT_TYPE"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v2, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_2
    invoke-virtual {v0, v9, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v0, v6, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_CAMERA_GROUP:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "DUAL_CAPTURE_CAMERA_GROUP_TYPE"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v2, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.motorola.camera5.EXTRA_ACTION"

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.motorola.camera5.EXTRA_CONTENT"

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onZoomCompleted()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateCameraPreviewSubDisplayTex(F)V

    return-void
.end method

.method public final onZoomStateChange(FLcom/motorola/camera/settings/CameraType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateCameraPreviewSubDisplayTex(F)V

    return-void
.end method

.method public final previewIdle()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/PreviewChange;->mIdle:Z

    iput-boolean v1, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized previewModeChange(IIIZF)V
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    .line 14
    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    .line 15
    iput p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 18
    iput-boolean p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 19
    iput-boolean p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mZoom:Z

    .line 20
    iput p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mTargetZoom:F

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
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

.method public final declared-synchronized previewModeChange(IIIZZZ)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    .line 4
    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    .line 5
    iput p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    .line 6
    iput-boolean p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    .line 7
    iput-boolean p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 8
    iput-boolean p6, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
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

.method public final previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v3, :cond_a

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/PreviewChange;

    iget-boolean v9, v3, Lcom/motorola/camera/ui/PreviewChange;->mIdle:Z

    if-eqz v9, :cond_2

    iget-boolean v3, v3, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v14, v8}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/PreviewDiff;

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    iget v9, v9, Lcom/motorola/camera/PreviewDiff;->action:I

    if-ne v9, v5, :cond_1

    iput-boolean v14, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_2

    :cond_1
    new-instance v9, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v9}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    iput v5, v9, Lcom/motorola/camera/PreviewDiff;->action:I

    iput-boolean v3, v9, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v14, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :goto_2
    move v3, v15

    goto/16 :goto_5

    :cond_2
    iget-boolean v9, v3, Lcom/motorola/camera/ui/PreviewChange;->mZoom:Z

    if-eqz v9, :cond_3

    iget v9, v3, Lcom/motorola/camera/ui/PreviewChange;->mTargetZoom:F

    iget-boolean v3, v3, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    new-instance v10, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v10}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    iput v4, v10, Lcom/motorola/camera/PreviewDiff;->action:I

    iput-boolean v3, v10, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    iput v9, v10, Lcom/motorola/camera/PreviewDiff;->mZoomScale:F

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v14, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_2

    :cond_3
    iget v9, v3, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iget v10, v3, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget v11, v3, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    iget-boolean v12, v3, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    iget-boolean v5, v3, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    iget-boolean v3, v3, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v5

    goto :goto_3

    :cond_4
    iget-object v12, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v12, v12, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v12}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v15, v12, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v12, v12, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr v15, v12

    div-float v12, v7, v15

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v15

    invoke-static {v10, v11, v12, v5, v15}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getPreviewRatio(IIFZZ)F

    move-result v5

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    new-instance v12, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v12}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    iget-object v15, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v15, v15, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v15}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v15

    sget-object v14, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v14, v14, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v14, :cond_7

    iput v6, v12, Lcom/motorola/camera/PreviewDiff;->action:I

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v9, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v11, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v9, v10, v11, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_5
    new-instance v10, Landroid/graphics/RectF;

    iget v11, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v14, v11

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v4, v9

    invoke-direct {v10, v14, v4, v11, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, v12, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v9, Lcom/motorola/camera/PreviewSize;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v10, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v11, v10

    div-float/2addr v11, v5

    float-to-int v11, v11

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-virtual {v15, v4, v9}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object v4

    iget-object v4, v4, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v10, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v4, v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_6
    new-instance v9, Landroid/graphics/RectF;

    iget v10, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v11, v10

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v14, v4

    invoke-direct {v9, v11, v14, v10, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, v12, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    iget-object v4, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    const/16 v14, 0x30

    invoke-virtual {v4, v14}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    iput v4, v12, Lcom/motorola/camera/PreviewDiff;->action:I

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v11, v9, v14, v15}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Landroid/graphics/RectF;

    move-result-object v9

    iput-object v9, v12, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v5, v10, v9, v15}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Landroid/graphics/RectF;

    move-result-object v9

    iput-object v9, v12, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    iget-object v10, v12, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iput v4, v12, Lcom/motorola/camera/PreviewDiff;->action:I

    goto :goto_4

    :cond_9
    iput v6, v12, Lcom/motorola/camera/PreviewDiff;->action:I

    :goto_4
    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    iput-boolean v3, v12, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v15, v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_a
    move v3, v15

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-nez v2, :cond_b

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/PreviewDiff;

    iget v2, v2, Lcom/motorola/camera/PreviewDiff;->action:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_b

    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_b
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_6
    return-void

    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    const/4 v3, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/PreviewDiff;

    if-nez v3, :cond_f

    iget v3, v4, Lcom/motorola/camera/PreviewDiff;->action:I

    if-ne v3, v6, :cond_e

    :cond_f
    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/motorola/camera/PreviewDiff;

    iget v4, v2, Lcom/motorola/camera/PreviewDiff;->action:I

    invoke-static {v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    const/16 v22, 0x2

    if-eq v4, v6, :cond_15

    const/4 v3, 0x3

    if-eq v4, v3, :cond_13

    :cond_11
    :goto_8
    const/4 v2, 0x0

    :cond_12
    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_d

    :cond_13
    iget-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    if-nez v0, :cond_11

    invoke-virtual {v14, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget v0, v2, Lcom/motorola/camera/PreviewDiff;->mZoomScale:F

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;

    const/4 v4, 0x1

    invoke-direct {v5, v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    new-instance v16, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v17, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;

    move-object/from16 v4, p0

    move v2, v0

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;)V

    const-wide/16 v18, 0x64

    const/16 v23, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v21, v2

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    move-object/from16 v0, v16

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v4, 0x1

    invoke-virtual {v14, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_15
    const/4 v4, 0x1

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    if-nez v2, :cond_14

    const/16 v2, 0x9

    invoke-virtual {v14, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iput-boolean v4, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    new-instance v16, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/16 v23, 0x0

    const-wide/16 v18, 0xc6

    const v20, 0x3f4ccccd    # 0.8f

    const/16 v21, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    move-object/from16 v0, v16

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    filled-new-array {v2}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v2

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v3, 0x3

    invoke-virtual {v14, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    const/4 v4, 0x1

    iput-boolean v4, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_16
    iget-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    if-nez v0, :cond_11

    const/4 v3, 0x3

    invoke-virtual {v14, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v2, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;

    const/4 v3, 0x0

    invoke-direct {v11, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;I)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    if-nez v8, :cond_17

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    :cond_17
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_19

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_18

    goto :goto_a

    :cond_18
    move v8, v7

    const/4 v7, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    move v8, v7

    const/4 v7, 0x1

    :goto_b
    if-eqz v7, :cond_1a

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v8, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v12, v9, Landroid/graphics/PointF;->x:F

    mul-float/2addr v12, v8

    iget v15, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v15, v8

    invoke-virtual {v9, v12, v15}, Landroid/graphics/PointF;->set(FF)V

    :cond_1a
    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    new-instance v16, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v17, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;

    const/4 v12, 0x0

    move-object v15, v2

    move-object v2, v0

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v12}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;I)V

    const/16 v22, 0x1

    const/16 v23, 0x0

    const-wide/16 v18, 0x64

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    move-object/from16 v0, v16

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v2, 0x6

    invoke-virtual {v14, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-object v2, v15, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    iget-object v3, v15, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->animatePreviewSwitch(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_8

    :cond_1b
    move-object v15, v2

    move v8, v7

    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v2, :cond_1c

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    :goto_c
    iget-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, v15, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    if-eqz v0, :cond_1d

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1d
    iget-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z

    if-eqz v0, :cond_12

    if-nez v3, :cond_12

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    goto/16 :goto_9

    :goto_d
    iput-boolean v4, v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_e

    :cond_1e
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    return-void
.end method

.method public final declared-synchronized registerListener$7(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final registerZoomChangeListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
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

.method public final resetBlurTex()V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_LANDSCAPE_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_3
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBlurRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    return-void
.end method

.method public final declared-synchronized setActive(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setActive(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setActive(Z)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setActive(Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setActive(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setActive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setCameraClosing(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setClosing(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setClosing(Z)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setClosing(Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setClosing(Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setClosing(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setCameraView()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, v0, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized setCameraView(ZZ)V
    .locals 5

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 11
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    move v4, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_3
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v1, :cond_7

    if-nez p1, :cond_5

    .line 17
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz p2, :cond_6

    if-nez v0, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    move p1, v2

    goto :goto_5

    :cond_8
    move p1, v3

    .line 20
    :goto_5
    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVisibility$3(Z)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p2, :cond_9

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    .line 22
    :goto_6
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    .line 23
    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_a
    monitor-exit p0

    return-void

    .line 26
    :cond_b
    :goto_7
    :try_start_1
    const-string p1, "CameraPreview"

    const-string p2, "calling setCameraView but textures are not initialized"

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :goto_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setSubPreviewVisibility(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final shouldHandleUIEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_SHOW_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandleUIEvent:Z

    if-eqz p0, :cond_3

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldProcessUIEvent(FF)Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->shouldProcessUiEventStream(FF)Z

    move-result p0

    return p0

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_SHOW_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandleUIEvent:Z

    if-eqz p2, :cond_1

    const-string p0, "IS_SELECTED"

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_VIDEO_PORTRAIT_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return p2

    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return v0

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionFeatureSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->handleTenBitModeState(Lcom/google/zxing/Result;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->init()V

    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateToggleResource()V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomAssistWindowSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerZoomChangeListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getPipZoomRatio()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPipZoomRatio:I

    goto/16 :goto_4

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPipZoomRatio:I

    goto/16 :goto_4

    :cond_8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_3

    :cond_9
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v9, 0x19

    invoke-direct {v3, v9, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_a
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppClosing(Lcom/google/zxing/Result;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v8, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->removeSmileCaptureCallback()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->removeGestureCaptureCallback()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v8, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_b
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_2

    :cond_d
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_1

    :cond_e
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto/16 :goto_4

    :cond_f
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldSkipFrameForSingleSessionQcfaShot()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    const-string v3, "QCFA_SHOT"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSkipNextFrame()V

    goto/16 :goto_4

    :cond_10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    goto/16 :goto_4

    :cond_11
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v2, :cond_12

    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    :cond_12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v2, :cond_1a

    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_4

    :cond_13
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-boolean v2, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_4

    :cond_14
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v9, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v3, v9}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableFpsReporting()V

    goto :goto_4

    :cond_16
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_4

    :cond_17
    :goto_2
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    goto :goto_4

    :cond_18
    :goto_3
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x7

    :try_start_2
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    monitor-exit p0

    invoke-virtual {p0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->onCaptureFinished()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    :cond_19
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-boolean v2, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_1a
    :goto_4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    goto/16 :goto_13

    :cond_1b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->storePreviewSize()V

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->unInitHumanEffect()V

    goto/16 :goto_13

    :cond_1c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    goto/16 :goto_13

    :cond_1d
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto/16 :goto_12

    :cond_1e
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_1f
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v13, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v10, v11, v12, v13}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInitialPreviewDebugOn()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    filled-new-array {v10}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_20

    sput-boolean v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    sput v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInitialPreviewMaxCount()I

    move-result v2

    sput v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    const-string v2, "Preview"

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->clearOldDumpedPreviewFrames()V

    goto :goto_5

    :cond_20
    sput-boolean v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    sput v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    sput v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    :cond_21
    :goto_5
    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v2, :cond_22

    sput v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    :cond_22
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    goto/16 :goto_13

    :cond_23
    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v9, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v9, v10}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewIdle()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto/16 :goto_13

    :cond_24
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_5e

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    goto/16 :goto_10

    :cond_25
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto/16 :goto_f

    :cond_26
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ON_UP"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v4, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getVisibleTimestampAt(J)J

    move-result-wide v2

    const-string v4, "CAPTURE_TIMESTAMP"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p0

    const-string v2, "CAPTURE_TRIGGER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v0, v2, :cond_68

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewIdle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_27
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit p0

    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :cond_28
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v0, 0x4

    :try_start_c
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0

    :cond_29
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto/16 :goto_13

    :cond_2a
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    goto/16 :goto_13

    :cond_2b
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v4, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    move v2, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v3

    sget-object v6, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    invoke-direct {v5, v3, v8, v0, v6}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    const-string v3, "ORIENTATION"

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->getPreviewOffset()F

    move-result v0

    float-to-int v0, v0

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    div-int/2addr v6, v2

    sub-int/2addr v6, v0

    move v0, v6

    new-instance v6, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v9, Lcom/motorola/camera/PreviewSize;->height:I

    div-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v0

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->width:I

    div-int/2addr v9, v2

    sub-int/2addr v0, v9

    invoke-direct {v6, v8, v10, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v2

    div-float v2, v0, v2

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->getCaptureRecord()Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "SNAPSHOT_COUNT"

    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "SNAPSHOT_COUNT"

    add-int/2addr v8, v7

    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2c
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_13

    :cond_2d
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopOptimizationSupported()Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2e
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    goto/16 :goto_13

    :cond_2f
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    goto/16 :goto_13

    :cond_30
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    :cond_31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    :cond_32
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto/16 :goto_13

    :cond_33
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v2, :cond_34

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->clearEffects()V

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_34
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->deinit()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    if-eqz v2, :cond_68

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->unregisterListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_13

    :cond_35
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isModeSwitchUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_36
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    :cond_37
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    if-nez v2, :cond_38

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->copyPreviewFrame(Lcom/google/zxing/Result;)V

    :cond_38
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v3, v4}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_39
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v5, v6, :cond_3a

    const/16 v5, 0x3e8

    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    goto :goto_6

    :cond_3a
    const-string v5, "SRC_MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    :goto_6
    const-string v5, "MODE"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    if-ne v2, v6, :cond_3b

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "SRC_MODE"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    :cond_3b
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    if-eq v0, v3, :cond_3c

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, v2, :cond_3e

    :cond_3c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    if-ne v0, v3, :cond_3e

    const/16 v0, 0x12

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3d

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    goto :goto_7

    :cond_3d
    if-ne v2, v0, :cond_3e

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SINGLE_REAR_BOKEH:Z

    if-nez v0, :cond_3e

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    :cond_3e
    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_3f

    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_3f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->disableMeisheRender()V

    goto/16 :goto_13

    :cond_40
    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-ne v2, v3, :cond_41

    monitor-exit p0

    return-void

    :cond_41
    :try_start_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updatePreviewType(I)V

    :cond_42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v2, v4, :cond_44

    if-ne v3, v7, :cond_43

    move v4, v8

    goto :goto_8

    :cond_43
    move v4, v7

    goto :goto_8

    :cond_44
    move v4, v3

    :goto_8
    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v2, v3, :cond_45

    move v5, v7

    goto :goto_9

    :cond_45
    move v5, v8

    :goto_9
    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v2, v3, :cond_46

    move v2, v6

    move v6, v7

    goto :goto_a

    :cond_46
    move v2, v6

    move v6, v8

    :goto_a
    if-eqz v5, :cond_54

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    const-string v5, "CAMERA_TYPE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    const-string v6, "ZOOM_SEGMENT"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v9, "IS_MANUAL_JUMP"

    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v9

    if-eqz v9, :cond_48

    if-nez v0, :cond_48

    :cond_47
    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v9

    if-eqz v9, :cond_52

    :cond_48
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result v8

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingWideMaxRealZoomX()F

    move-result v9

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    div-float v10, v2, v10

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v11

    if-eqz v11, :cond_4a

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq v3, v11, :cond_49

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v11, :cond_4a

    :cond_49
    invoke-static {v10, v3}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManual(FLcom/motorola/camera/settings/CameraType;)F

    move-result v10

    :cond_4a
    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const v12, 0x3f8ccccd    # 1.1f

    if-ne v5, v11, :cond_4d

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v13, :cond_4d

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    if-eqz v0, :cond_4b

    div-float/2addr v8, v2

    goto :goto_b

    :cond_4b
    move v8, v12

    :goto_b
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne v6, v0, :cond_4c

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v6, v8, v0

    goto :goto_c

    :cond_4c
    move v6, v8

    goto :goto_c

    :cond_4d
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v6, :cond_4e

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v6, :cond_4e

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getMacroToUwZoomX()F

    move-result v0

    div-float v6, v0, v10

    goto :goto_c

    :cond_4e
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v6, :cond_50

    if-ne v3, v11, :cond_50

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    if-eqz v0, :cond_4f

    div-float/2addr v9, v2

    move v6, v9

    goto :goto_c

    :cond_4f
    move v6, v12

    goto :goto_c

    :cond_50
    if-ne v5, v6, :cond_51

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v0, :cond_51

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v8, v0

    mul-float v6, v8, v9

    goto :goto_c

    :cond_51
    move v6, v2

    :goto_c
    move v5, v7

    goto :goto_d

    :cond_52
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v0, :cond_53

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v0, :cond_53

    const v6, 0x3fb9999a    # 1.45f

    goto :goto_c

    :cond_53
    move v6, v2

    move v5, v8

    :goto_d
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZF)V

    goto :goto_e

    :cond_54
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZZZ)V

    :goto_e
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_55
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;)V

    :cond_56
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    if-eqz v0, :cond_68

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v2

    iput-boolean v2, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isBlockedMode:Z

    goto/16 :goto_13

    :cond_57
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_13

    :cond_58
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->resetResult()V

    goto/16 :goto_13

    :cond_59
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CAPTURE_TRIGGER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v0, v2, :cond_5a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewIdle()V

    :cond_5a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoEnabledModes()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoFamilyMode()Z

    move-result v0

    if-nez v0, :cond_68

    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCliGestureRecording:Z

    goto/16 :goto_13

    :cond_5b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "OPEN_GALLERY_CANCEL"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewIdle()V

    goto/16 :goto_13

    :cond_5c
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_68

    const-string v2, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v0, v2, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateHidePreview()V

    goto/16 :goto_13

    :cond_5d
    :goto_f
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, v2, :cond_68

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewIdle()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    goto/16 :goto_13

    :cond_5e
    :goto_10
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_5f

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5f
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v4, v5, :cond_60

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>()V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_60
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v3, :cond_61

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_61
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->registerListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCliGestureRecording:Z

    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    goto :goto_11

    :cond_62
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoRecording:Z

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "INITIAL_LUX"

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->getLastLux()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_11
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v0

    if-eqz v3, :cond_64

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v3, v4, :cond_64

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v0, v4, :cond_64

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v3, v0, :cond_63

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->isContinuousKnifeSwitch()Z

    move-result v8

    :cond_63
    if-nez v8, :cond_64

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewIdle()V

    :cond_64
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    if-eqz v2, :cond_68

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_13

    :cond_65
    :goto_12
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v3, v4}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->showFilterVideoSliderBar(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v2, :cond_66

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->clearEffects()V

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_66
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateDualCapturePosition(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->initHumanEffect()V

    :cond_67
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->enableMeisheRender()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_68
    :goto_13
    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0

    :goto_14
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0
.end method

.method public final declared-synchronized storePreviewSize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;
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

.method public final declared-synchronized unloadTextures()V
    .locals 6

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
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerListener$7(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v5, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->shutterClickListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object v1, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->unloadTexture()V

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->unloadTexture()V

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->unloadTexture()V

    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/Flags;->clear()V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final updateCameraPreviewSubDisplayTex(F)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, p1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPipZoomRatio:I

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    int-to-float v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->setSize(FF)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->layoutSubDisplayLines(II)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateDualCapturePosition(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->switchCameraInPIPLayout(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateViewfinder()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder()V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setDefaultVerticesData()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setDefaultVerticesData()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    :cond_1
    return-void
.end method
