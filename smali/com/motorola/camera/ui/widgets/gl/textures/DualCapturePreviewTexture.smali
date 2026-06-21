.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static final VERTICES_DATA_PIP:[F

.field public static final VERTICES_DATA_SS:[F

.field public static final VERTICES_DATA_SS_FOLD_LANDSCAPE:[F

.field public static final VERTICES_DATA_SS_FOLD_PORTRAIT:[F


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public final mFboProjection:[F

.field public mFboSize:Lcom/motorola/camera/PreviewSize;

.field public mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mFirstFrameCallbackCount:I

.field public mFlags:Lcom/motorola/camera/utility/Flags;

.field public mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public mHandleUIEvent:Z

.field public final mIdentityMatrix:[F

.field public mIsFoldLandscape:Z

.field public final mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

.field public mMasterLatestTimestampNs:J

.field public final mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mPIPDrag:Z

.field public final mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mPreviewFitTransform:Lcom/google/zxing/Result;

.field public volatile mPreviewType:I

.field public final mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

.field public mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public final mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;

.field public maxRect:Lcom/motorola/camera/SecureDataHelper;

.field public rect:Lcom/motorola/camera/SecureDataHelper;

.field public final zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS_FOLD_PORTRAIT:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS_FOLD_LANDSCAPE:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_PIP:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40d56042    # -0.6665f
        0x0
        0x0
        0x3e2e147b    # 0.17f
        0x3f800000    # 1.0f
        -0x40d56042    # -0.6665f
        0x0
        0x3f800000    # 1.0f
        0x3e2e147b    # 0.17f
        -0x40800000    # -1.0f
        0x3f2a9fbe    # 0.6665f
        0x0
        0x0
        0x3f547ae1    # 0.83f
        0x3f800000    # 1.0f
        0x3f2a9fbe    # 0.6665f
        0x0
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x409c71c7
        0x0
        0x0
        0x3d638e39
        0x3f800000    # 1.0f
        -0x409c71c7
        0x0
        0x3f800000    # 1.0f
        0x3d638e39
        -0x40800000    # -1.0f
        0x3f638e39
        0x0
        0x0
        0x3f71c71c
        0x3f800000    # 1.0f
        0x3f638e39
        0x0
        0x3f800000    # 1.0f
        0x3f71c71c
    .end array-data

    :array_2
    .array-data 4
        -0x409c71c7
        -0x40800000    # -1.0f
        0x0
        0x3d638e39
        0x0
        0x3f638e39
        -0x40800000    # -1.0f
        0x0
        0x3f71c71c
        0x0
        -0x409c71c7
        0x3f800000    # 1.0f
        0x0
        0x3d638e39
        0x3f800000    # 1.0f
        0x3f638e39
        0x3f800000    # 1.0f
        0x0
        0x3f71c71c
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;)V
    .locals 11

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIdentityMatrix:[F

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboProjection:[F

    .line 4
    new-instance v0, Lcom/motorola/camera/utility/Flags;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 6
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 9
    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setupFbo$1()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    .line 14
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    filled-new-array {v1, v2}, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 15
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    .line 16
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 17
    const-string/jumbo v3, "type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 18
    invoke-static {v2, v10, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    .line 20
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v9, 0x4

    const/4 v5, 0x1

    move-object v7, p2

    move-object v8, p3

    .line 21
    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    .line 22
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    .line 23
    iput-boolean v10, v3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mDualMode:Z

    .line 24
    iput-boolean v10, v3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMasterRender:Z

    .line 25
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v5, 0x0

    const/4 v9, 0x5

    .line 26
    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    .line 27
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    .line 28
    iput-boolean v10, v3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mDualMode:Z

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 31
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    .line 32
    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    .line 33
    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 34
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const-string v3, ""

    .line 35
    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/String;)V

    .line 36
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 39
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    .line 40
    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 42
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_65_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 43
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->resetAudioLensSwitchTextures()V

    :cond_1
    move-object v0, p4

    .line 44
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    .locals 4

    .line 45
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 46
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 v0, 0x10

    .line 47
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIdentityMatrix:[F

    .line 48
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboProjection:[F

    .line 49
    new-instance v0, Lcom/motorola/camera/utility/Flags;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    .line 51
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    filled-new-array {v1, v2}, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 52
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    .line 53
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 54
    const-string/jumbo v3, "type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 55
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    .line 57
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 58
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 59
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 60
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 61
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    .line 62
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    .line 63
    iget-wide v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterLatestTimestampNs:J

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterLatestTimestampNs:J

    .line 64
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 65
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 66
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    .line 67
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    .line 69
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    .line 70
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 71
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    return-void
.end method


# virtual methods
.method public final applyPreviewChange$1(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLandscapeLayout()Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v1

    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v5, v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v1, v4}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget v4, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v5, v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    :goto_0
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setupFbo$1()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-object v1, v3

    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3, v1, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    iget-object v4, v4, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v1, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    const v5, 0x3ea8f5c3    # 0.33f

    mul-float v6, v1, v5

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    iget-object v7, v7, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v8, v3

    mul-float/2addr v8, v6

    add-float/2addr v8, v4

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v7, v3

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    :cond_2
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    :cond_3
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v8, v9, :cond_4

    move v8, v9

    goto :goto_1

    :cond_4
    move v8, v10

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x0

    if-eqz v11, :cond_d

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    :goto_2
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    iget-object v2, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float/2addr v1, v2

    :cond_6
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v2, :cond_9

    if-eqz v8, :cond_7

    neg-float v2, v5

    goto :goto_3

    :cond_7
    move v2, v5

    :goto_3
    invoke-virtual {v4, v2, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_8
    neg-float v5, v5

    :goto_4
    invoke-virtual {v7, v5, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_6

    :cond_9
    if-eqz v8, :cond_a

    move v2, v5

    goto :goto_5

    :cond_a
    neg-float v2, v5

    :goto_5
    invoke-virtual {v4, v13, v2, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    if-eqz v8, :cond_b

    neg-float v5, v5

    :cond_b
    invoke-virtual {v7, v13, v5, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    :goto_6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_c
    move v6, v1

    goto/16 :goto_c

    :cond_d
    if-eqz v8, :cond_e

    move v2, v6

    goto :goto_7

    :cond_e
    move v2, v1

    :goto_7
    if-eqz v8, :cond_f

    move v6, v1

    :cond_f
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v11

    int-to-float v11, v11

    const v14, 0x3cf5c28f    # 0.03f

    mul-float/2addr v11, v14

    iget-boolean v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v14, :cond_10

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v15}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v5

    sub-float/2addr v14, v15

    neg-float v14, v14

    div-float/2addr v14, v3

    add-float/2addr v14, v11

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v15}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v15

    int-to-float v15, v15

    move/from16 p1, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v15, v3

    div-float v15, v15, p1

    sub-float/2addr v15, v11

    goto :goto_8

    :cond_10
    move/from16 p1, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    sub-float/2addr v3, v14

    div-float v3, v3, p1

    sub-float v14, v3, v11

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v15}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v5

    sub-float/2addr v3, v15

    div-float v3, v3, p1

    sub-float v15, v3, v11

    :goto_8
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    if-eqz v3, :cond_11

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v14, v3

    :cond_11
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_13

    if-eqz v8, :cond_12

    invoke-virtual {v4, v14, v15, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_9

    :cond_12
    invoke-virtual {v7, v14, v15, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    :goto_9
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v14, v15, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    goto :goto_a

    :cond_13
    if-eqz v8, :cond_14

    move-object v4, v3

    goto :goto_a

    :cond_14
    move-object v7, v3

    :goto_a
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_16

    div-float v1, v5, v1

    invoke-virtual {v3, v1, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v3, v1, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v1, v1, v10

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v8, :cond_15

    move-object v1, v4

    goto :goto_b

    :cond_15
    move-object v1, v7

    :goto_b
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v3, v3, v9

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v3, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource(I)V

    :cond_16
    move v1, v2

    :goto_c
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v2, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v12, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v12, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_18

    if-eqz v8, :cond_17

    goto :goto_d

    :cond_17
    move-object v4, v7

    :goto_d
    invoke-virtual {v1, v12, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v12, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v13, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v1, :cond_19

    invoke-virtual {v1, v13, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    iget-object v1, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    iget-object v1, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v0, v13, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_e
    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    return-void
.end method

.method public final firstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    :cond_0
    return-void
.end method

.method public final fixRectWrapperByPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/SecureDataHelper;)V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    const v1, 0x3ea8f5c3    # 0.33f

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/RectF;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    mul-float/2addr p0, v1

    sub-float/2addr p1, p0

    invoke-virtual {p2, v0, v4, v5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    iget-object p2, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/RectF;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    mul-float/2addr p0, v1

    sub-float/2addr p1, p0

    invoke-virtual {p2, v0, v4, v5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 12

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, v3, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    div-float/2addr v3, v6

    :goto_1
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {v7, v8, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    if-eqz v2, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->fixRectWrapperByPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/SecureDataHelper;)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/SecureDataHelper;->scale(F)V

    if-eqz v2, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-direct {p1, v8, v9, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_3

    :cond_3
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v8, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move-object p1, v8

    :goto_3
    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/16 v9, 0xb4

    if-eqz v8, :cond_5

    if-ne v8, v9, :cond_4

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    :goto_5
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v8, v10

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz v10, :cond_7

    if-ne v10, v9, :cond_6

    goto :goto_6

    :cond_6
    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    goto :goto_7

    :cond_7
    :goto_6
    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    :goto_7
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v9, v10

    iget-boolean v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    const v11, 0x3ea8f5c3    # 0.33f

    if-eqz v10, :cond_c

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v10, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v10

    invoke-virtual {v1}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v10

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_9

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v10

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_8

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    div-float/2addr v1, v5

    div-float/2addr v8, v5

    add-float/2addr v8, v1

    int-to-float v1, v0

    add-float/2addr v8, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    div-float/2addr v1, v5

    div-float/2addr v8, v5

    sub-float/2addr v1, v8

    int-to-float v6, v0

    sub-float v8, v1, v6

    :goto_8
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    div-float/2addr v1, v5

    div-float/2addr v9, v5

    sub-float/2addr v1, v9

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_a

    :cond_9
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v10

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_a

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    div-float/2addr v1, v5

    div-float/2addr v8, v5

    add-float/2addr v8, v1

    int-to-float v1, v0

    add-float/2addr v8, v1

    goto :goto_9

    :cond_a
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    div-float/2addr v1, v5

    div-float/2addr v8, v5

    sub-float/2addr v1, v8

    int-to-float v6, v0

    sub-float/2addr v1, v6

    move v8, v1

    :goto_9
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    div-float/2addr v1, v5

    div-float/2addr v9, v5

    add-float/2addr v9, v1

    int-to-float v0, v0

    add-float v1, v9, v0

    :goto_a
    if-eqz v2, :cond_b

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v5

    add-float/2addr p0, v1

    goto/16 :goto_e

    :cond_b
    sub-float/2addr v3, v4

    iget p0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr p0, v3

    add-float/2addr v8, p0

    iget p0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v3, p0

    add-float p0, v3, v1

    goto/16 :goto_e

    :cond_c
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_e

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    div-float/2addr v2, v5

    div-float/2addr v8, v5

    sub-float/2addr v2, v8

    int-to-float v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    move v8, v4

    goto :goto_b

    :cond_d
    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    div-float/2addr v2, v5

    div-float/2addr v8, v5

    add-float/2addr v8, v2

    int-to-float v2, v0

    add-float/2addr v8, v2

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v3, v8

    move v8, v3

    :goto_b
    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    div-float/2addr v2, v5

    div-float/2addr v9, v5

    add-float/2addr v9, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    add-float/2addr p0, v9

    int-to-float v0, v0

    add-float/2addr p0, v0

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    :goto_c
    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr p0, v1

    goto/16 :goto_e

    :cond_e
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_f

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    div-float/2addr v2, v5

    div-float/2addr v8, v5

    sub-float/2addr v2, v8

    int-to-float v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    move v8, v4

    goto :goto_d

    :cond_f
    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    div-float/2addr v2, v5

    div-float/2addr v8, v5

    add-float/2addr v8, v2

    int-to-float v2, v0

    add-float/2addr v8, v2

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v3, v8

    move v8, v3

    :goto_d
    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    div-float/2addr v2, v5

    div-float/2addr v9, v5

    sub-float/2addr v2, v9

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    add-float/2addr p0, v2

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    goto/16 :goto_c

    :goto_e
    const/4 v0, 0x0

    invoke-virtual {p1, v8, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    return-object p1
.end method

.method public final loadTexture()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    const/high16 v4, 0x41d00000    # 26.0f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v5, 0x41b00000    # 22.0f

    mul-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    const/high16 v4, 0x41300000    # 11.0f

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float v3, v3

    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    monitor-enter v0

    monitor-exit v0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_3

    monitor-enter v0

    monitor-exit v0

    :cond_3
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onDraw$com$motorola$camera$ui$widgets$gl$textures$DualCaptureTexture([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
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

.method public final declared-synchronized onDraw$com$motorola$camera$ui$widgets$gl$textures$DualCaptureTexture([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->RECORDING:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V
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

.method public final onDrawFbo()V
    .locals 11

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v3, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    .line 11
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v5

    const v6, 0x8d40

    invoke-static {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v5, 0x4100

    .line 12
    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 13
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    .line 14
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIdentityMatrix:[F

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboProjection:[F

    .line 15
    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    if-ne v9, v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    if-eqz v0, :cond_2

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    if-eqz v0, :cond_4

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v1, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 25
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-wide v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMasterLatestTimestampNs:J

    iput-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterLatestTimestampNs:J

    const/4 v1, 0x0

    .line 26
    invoke-static {v6, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    if-eqz v0, :cond_6

    .line 27
    invoke-static {v3, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    .line 29
    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIdentityMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboProjection:[F

    .line 32
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v4, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    if-eqz v2, :cond_5

    .line 33
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    .line 34
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    .line 35
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 37
    :cond_5
    invoke-static {v6, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    :cond_6
    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onDrawFbo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
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

.method public final onPreDraw([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onPreDraw([F[F)V

    :cond_0
    return-void
.end method

.method public final onScrollEnd(ZZ)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->PIP_PREVIEW:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/high16 v5, 0x43340000    # 180.0f

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :goto_1
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v8, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f070130

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float/2addr v8, v2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0701a6

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v8, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCaptureSplitVerticalGuideline()F

    move-result v3

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v8, v2

    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->getTouchKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v4, v1, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mVisible:Z

    goto/16 :goto_17

    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/google/zxing/Result;

    if-nez v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    iget-object v2, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    div-float/2addr v2, v3

    :goto_3
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v9, v8, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f07012f

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v10

    goto :goto_4

    :cond_6
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v10

    :goto_4
    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz v12, :cond_7

    invoke-virtual {v0, v12, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->fixRectWrapperByPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/SecureDataHelper;)V

    :cond_7
    sget-object v12, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Point;

    new-instance v13, Lcom/motorola/camera/PreviewSize;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v14, v12

    sget-object v15, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v15, v15, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v15}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v15

    mul-float/2addr v15, v14

    float-to-int v14, v15

    invoke-direct {v13, v12, v14}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    :cond_8
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    new-instance v14, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v12}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v2

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v12}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v14, v15, v12}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-virtual {v10, v2}, Lcom/motorola/camera/SecureDataHelper;->scale(F)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v2, :cond_9

    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v12

    :goto_5
    sub-int/2addr v2, v12

    int-to-float v2, v2

    div-float/2addr v2, v7

    goto :goto_6

    :cond_9
    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v12

    goto :goto_5

    :goto_6
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v13, :cond_d

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v13, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v13

    invoke-virtual {v10}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v13

    cmpg-float v3, v3, v13

    if-gtz v3, :cond_b

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v13, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/RectF;

    iget v15, v13, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v15

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    cmpg-float v3, v3, v13

    if-gtz v3, :cond_a

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v13, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v13

    int-to-float v13, v8

    add-float/2addr v13, v3

    add-float/2addr v13, v2

    float-to-int v2, v3

    iput v2, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move v5, v6

    goto :goto_7

    :cond_a
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v6, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v13, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v13

    int-to-float v13, v8

    sub-float v13, v3, v13

    add-float/2addr v13, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->left:I

    float-to-int v2, v3

    iput v2, v12, Landroid/graphics/Rect;->right:I

    const/high16 v5, 0x43340000    # 180.0f

    :goto_7
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v3, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v9

    int-to-float v3, v8

    sub-float v3, v2, v3

    invoke-virtual {v10}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v6

    sub-float v6, v2, v6

    float-to-int v6, v6

    iput v6, v12, Landroid/graphics/Rect;->top:I

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    :goto_8
    move v8, v3

    move v3, v13

    goto/16 :goto_15

    :cond_b
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v13, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/RectF;

    iget v15, v13, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v15

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    cmpg-float v3, v3, v13

    if-gtz v3, :cond_c

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v6, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v13, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v13

    int-to-float v13, v8

    add-float/2addr v13, v3

    add-float/2addr v13, v2

    float-to-int v2, v3

    iput v2, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    const/high16 v5, 0x43340000    # 180.0f

    goto :goto_9

    :cond_c
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v13, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v13

    int-to-float v13, v8

    sub-float v13, v3, v13

    add-float/2addr v13, v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->left:I

    float-to-int v2, v3

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move v5, v6

    :goto_9
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v3, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v9

    int-to-float v3, v8

    add-float/2addr v3, v2

    float-to-int v6, v2

    iput v6, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v6

    add-float/2addr v6, v2

    float-to-int v2, v6

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_d
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v7

    iget-object v15, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v15

    invoke-virtual {v10}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v15

    cmpg-float v13, v13, v15

    if-gtz v13, :cond_11

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v7

    iget-object v15, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/RectF;

    iget v5, v15, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v5

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpg-float v5, v13, v5

    if-gtz v5, :cond_f

    if-eqz v3, :cond_e

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    int-to-float v5, v8

    sub-float v5, v3, v5

    :goto_a
    add-float/2addr v5, v2

    goto :goto_b

    :cond_e
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    int-to-float v5, v8

    add-float/2addr v5, v3

    goto :goto_a

    :goto_b
    float-to-int v2, v3

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iget-object v2, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move/from16 v16, v6

    goto :goto_e

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    int-to-float v5, v8

    add-float/2addr v5, v3

    :goto_c
    add-float/2addr v5, v2

    goto :goto_d

    :cond_10
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    int-to-float v5, v8

    sub-float v5, v3, v5

    goto :goto_c

    :goto_d
    iget-object v2, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->left:I

    float-to-int v2, v3

    iput v2, v12, Landroid/graphics/Rect;->right:I

    const/high16 v16, 0x43340000    # 180.0f

    :goto_e
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    add-float/2addr v2, v9

    iget-object v3, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    int-to-float v3, v8

    sub-float v3, v2, v3

    invoke-virtual {v10}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v6

    sub-float v6, v2, v6

    float-to-int v6, v6

    iput v6, v12, Landroid/graphics/Rect;->top:I

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    :cond_11
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget-object v13, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/RectF;

    iget v15, v13, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v15

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    cmpg-float v5, v5, v13

    if-gtz v5, :cond_13

    if-eqz v3, :cond_12

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    int-to-float v5, v8

    sub-float v5, v3, v5

    :goto_f
    add-float/2addr v5, v2

    goto :goto_10

    :cond_12
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    int-to-float v5, v8

    add-float/2addr v5, v3

    goto :goto_f

    :goto_10
    float-to-int v2, v3

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iget-object v2, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    const/high16 v16, 0x43340000    # 180.0f

    goto :goto_13

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    int-to-float v5, v8

    add-float/2addr v5, v3

    :goto_11
    add-float/2addr v5, v2

    goto :goto_12

    :cond_14
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v5, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    int-to-float v5, v8

    sub-float v5, v3, v5

    goto :goto_11

    :goto_12
    iget-object v2, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    iput v2, v12, Landroid/graphics/Rect;->left:I

    float-to-int v2, v3

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move/from16 v16, v6

    :goto_13
    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    add-float/2addr v2, v9

    iget-object v3, v10, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    int-to-float v3, v8

    add-float/2addr v3, v2

    float-to-int v6, v2

    iput v6, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v6

    add-float/2addr v6, v2

    float-to-int v2, v6

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    :goto_14
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    :cond_15
    move v8, v3

    move v3, v5

    move/from16 v5, v16

    :goto_15
    new-instance v2, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    invoke-direct {v2, v12}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v1, v2}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->setBarKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    goto :goto_16

    :cond_16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    :goto_16
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v6, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_17
    const/high16 v6, 0x42340000    # 45.0f

    :cond_18
    :goto_17
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v3, "DUAL_PREVIEW_DRAG_POSITION"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "DUAL_PREV_SWAP_BTN_ROTATION"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "DUAL_PREV_SWAP_BTN_ROTATION_X"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "DUAL_PREV_DRAG_ACTION_UP"

    move/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "DUAL_PREV_APPLY_PREVIEW_DONE"

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    return-void
.end method

.method public final resetAudioLensSwitchTextures()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setAlpha(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x3ecccccd    # 0.4f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    if-eqz v1, :cond_1

    move p1, v2

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final setAudioLensSwitchTextureVisibility(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object p2, p2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    and-int/2addr p1, p2

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_2
    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v4, :cond_3

    iput v1, v4, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    iput v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v8, 0x2

    mul-int/2addr v6, v8

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v6

    iget v13, v6, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    int-to-float v6, v1

    sub-float/2addr v6, v13

    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    const/high16 v10, 0x43b40000    # 360.0f

    if-gez v9, :cond_0

    add-float/2addr v6, v10

    :cond_0
    const/high16 v9, 0x43340000    # 180.0f

    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    sub-float/2addr v6, v10

    :cond_1
    add-float v14, v13, v6

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;

    const/4 v6, 0x1

    invoke-direct {v10, v14, v6, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$4;-><init>(FILjava/lang/Object;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    const-wide/16 v11, 0x12c

    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    filled-new-array {v5, v4, v5}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v6

    invoke-virtual {v9, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v15

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v2, 0x4

    invoke-direct {v11, v2, v0, v15}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v12, 0x12c

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Landroidx/collection/internal/Lock;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    filled-new-array {v5, v4, v5}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v2

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v10, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v7, v9, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v2, v8

    invoke-virtual {v7, v10, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_4

    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    :cond_4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_5

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    :cond_5
    return-void
.end method

.method public final setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    return-void
.end method

.method public final setToggleResource(I)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, p1, :cond_2

    const p0, 0x7f0802ca

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, p1, :cond_3

    const p0, 0x7f0802c9

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t find xml resource for cameraType:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualCapturePreviewTexture"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_2
    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->getColor(Z)I

    move-result p0

    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    const/high16 p0, 0x41800000    # 16.0f

    iget p1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mDensity:F

    mul-float/2addr p0, p1

    iput-boolean v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    iput p0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    iput p0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    iget-object p1, v4, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {p1, p0, p0}, Landroid/graphics/PointF;->set(FF)V

    iget p0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    iget v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    mul-float/2addr v0, p1

    invoke-virtual {v4, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    if-ne p1, v2, :cond_5

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    :goto_3
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;

    if-nez p0, :cond_6

    return-void

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-nez p0, :cond_7

    const-string p0, ""

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    :goto_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne p1, v2, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    :goto_5
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    rem-int/lit8 p1, p0, 0xa

    if-nez p1, :cond_9

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    div-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_9
    invoke-static {p0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setZoomValueX(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setZoomValueX(Ljava/lang/String;)V

    :goto_7
    const/high16 p0, 0x41200000    # 10.0f

    iget-object p1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    return-void
.end method

.method public final setVerticesData()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS_FOLD_PORTRAIT:[F

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS_FOLD_LANDSCAPE:[F

    if-eqz v0, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz p0, :cond_1

    move-object v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    return-void

    :cond_2
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS:[F

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    return-void

    :cond_3
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_PIP:[F

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    return-void
.end method

.method public final setVisibility$3(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAudioLensSwitchTextureVisibility(ZZ)V

    return-void
.end method

.method public final setupFbo$1()V
    .locals 12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-nez v2, :cond_1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-nez v2, :cond_3

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIdentityMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboProjection:[F

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-int v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v2, v3

    int-to-float v0, v0

    div-float v7, v0, v3

    neg-int v0, v1

    int-to-float v0, v0

    div-float v8, v0, v3

    int-to-float v0, v1

    div-float v9, v0, v3

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboProjection:[F

    const/4 v5, 0x0

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public final shouldProcessUiEventStream(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v0

    :goto_0
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    return-void
.end method

.method public final updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized updatePreviewType(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource(I)V
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

.method public final updateToggleResource()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource(I)V

    :cond_0
    return-void
.end method
