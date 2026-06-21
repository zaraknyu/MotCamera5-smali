.class public final Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mAutoTriggerTimer:Ljava/util/Timer;

.field public mBlackAlpha:F

.field public mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mCct:I

.field public final mCctMap:Ljava/util/TreeMap;

.field public mDensity:F

.field public final mDisabledRunnable:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;

.field public mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

.field public mEnableAutoTrigger:Z

.field public mEnableCountDownTimer:Z

.field public final mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final mFlashColors:[I

.field public mFlashFired:Z

.field public mIsCapturing:Z

.field public mIsControlPanelOpened:Z

.field public mIsTripodMode:Z

.field public final mMaxAlpha:F

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public mShouldMonitorLux:Z

.field public mStoredBrightness:F

.field public final mTurnOffLux:F

.field public final mTurnOnLux:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsControlPanelOpened:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsTripodMode:Z

    new-instance p2, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v0, 0x1b

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisabledRunnable:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;

    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    aget v1, v0, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mTurnOnLux:F

    aget v0, v0, v2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mTurnOffLux:F

    iget v0, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAlpha:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mMaxAlpha:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashColors:[I

    iget-object p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashColor:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ":"

    if-eqz v3, :cond_0

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move v3, p1

    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_1

    aget-object v5, p2, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    aput p2, v0, p1

    :cond_1
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mCctMap:Ljava/util/TreeMap;

    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashCctTable:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    move v1, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mCctMap:Ljava/util/TreeMap;

    aget-object v6, v3, p1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final animateLayout(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFFZ)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v0, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v4

    sub-float v7, p4, p3

    sub-float v9, p6, p5

    if-nez p7, :cond_0

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v2

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    mul-float/2addr v2, v6

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float/2addr v6, v2

    sub-float v2, v6, p6

    move v11, v2

    goto :goto_0

    :cond_0
    move/from16 v11, p4

    :goto_0
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;

    move/from16 v6, p3

    move/from16 v8, p5

    move/from16 v10, p7

    move v2, v3

    move v3, v0

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;FFFFFFFFZF)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-wide/16 v14, 0x64

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v12 .. v19}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v12, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v1, 0xb

    invoke-virtual {v0, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animatePreviewSwitch(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsTripodMode:Z

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->getBorderWidth(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;Z)F

    move-result v7

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    iget-boolean v9, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsTripodMode:Z

    move v8, v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->animateLayout(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFFZ)V

    return-void
.end method

.method public final checkEnableAutoTrigger()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    return-void
.end method

.method public final doSurfacePaneChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iget v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setSize(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->layoutFlashTexture(ZZ)V

    return-void
.end method

.method public final enableDisplayFlash(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->updateDisplayFlash(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IS_SELECTED"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public final getBorderWidth(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;Z)F
    .locals 0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    :goto_0
    mul-float/2addr p0, p1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/high16 p1, 0x41880000    # 17.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42080000    # 34.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    goto :goto_0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 17

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v16}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FrontDisplayFlash"

    return-object p0
.end method

.method public final declared-synchronized hideFlash()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mStoredBrightness:F

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z
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

.method public final layoutFlashTexture(ZZ)V
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setHollowSize(FFF)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object v1

    iget-object v1, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v4, v2, v9

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float v5, v1, v9

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    sub-float v6, v2, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {v2, v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setModuleSizes(FFF)V

    invoke-virtual {p0, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->getBorderWidth(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;Z)F

    move-result v8

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p0

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->setFoldHollowSize(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFFZF)V

    goto :goto_2

    :cond_2
    move-object v2, p0

    move v7, p1

    mul-float p0, v8, v9

    sub-float/2addr v4, p0

    sub-float/2addr v5, p0

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const/high16 p0, 0x40800000    # 4.0f

    mul-float/2addr p0, v4

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p0, p1

    invoke-static {v5, p0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_0
    if-nez v7, :cond_4

    iget-object p0, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    iget p1, v2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    mul-float/2addr p0, p1

    iget-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v9

    sub-float/2addr p1, p0

    sub-float p0, p1, v8

    goto :goto_1

    :cond_4
    move p0, v6

    :goto_1
    sub-float/2addr v6, v8

    invoke-static {v6, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p1, v4, v5, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setHollowSize(FFF)V

    :goto_2
    cmpl-float p0, v1, v0

    if-lez p0, :cond_5

    const/high16 p0, 0x3f800000    # 1.0f

    iput p0, v2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackAlpha:F

    return-void

    :cond_5
    const p0, 0x3f333333    # 0.7f

    iput p0, v2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackAlpha:F

    :cond_6
    :goto_3
    return-void
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashColors:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->FRONT_DISPLAY_BLACK:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/high16 v3, -0x1000000

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Margin:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v3, v0

    invoke-virtual {v2, v1, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V
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

.method public final nonMainScreenMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z
    .locals 0

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCLIDisplayFlashAvailable()Z

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

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

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

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 13

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setSize(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->layoutFlashTexture(ZZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsTripodMode:Z

    if-eq v0, p2, :cond_3

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsTripodMode:Z

    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v2, 0x42080000    # 34.0f

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    mul-float v10, v3, v4

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    mul-float v11, v0, v4

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object p2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    monitor-enter v2

    :try_start_0
    new-instance v6, Landroid/graphics/PointF;

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    aget v1, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    mul-float/2addr v0, v3

    invoke-direct {v6, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    new-instance v7, Landroid/graphics/PointF;

    iget-object v0, p2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v1, v3

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v0, v3

    invoke-direct {v7, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    monitor-enter v1

    :try_start_1
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRadius:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    iget-object p2, p2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    add-float v9, p1, p2

    iget-boolean v12, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsTripodMode:Z

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->animateLayout(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFFZ)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    return-void
.end method

.method public final setFoldHollowSize(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFFZF)V
    .locals 7

    iget-object v0, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Fold_Portrait:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    mul-float/2addr p1, v5

    div-float/2addr p1, v4

    mul-float/2addr p6, v6

    sub-float/2addr p1, p6

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    :goto_0
    div-float p2, v3, v6

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLandscapeLayout()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    mul-float/2addr p1, v5

    div-float/2addr p1, v4

    mul-float v0, p6, v6

    sub-float/2addr p1, v0

    div-float v1, p1, v6

    if-eqz p5, :cond_2

    sub-float p1, p3, v0

    sub-float/2addr p4, p6

    goto :goto_1

    :cond_2
    move p4, v1

    :goto_1
    cmpl-float p2, p2, p3

    if-nez p2, :cond_3

    move v2, p1

    goto :goto_2

    :cond_3
    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    :goto_2
    move v3, p1

    move p2, p4

    move p1, v2

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    move p2, p1

    move v3, p2

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p0, p1, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setHollowSize(FFF)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->nonMainScreenMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_10

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_b

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v1

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    goto/16 :goto_3

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mStoredBrightness:F

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->checkEnableAutoTrigger()V

    goto/16 :goto_3

    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->checkEnableAutoTrigger()V

    goto/16 :goto_3

    :cond_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    goto/16 :goto_3

    :cond_7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    :cond_9
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsControlPanelOpened:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_a
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_3

    :cond_b
    :goto_0
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p1

    if-nez p1, :cond_c

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    :cond_c
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisabledRunnable:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    goto :goto_3

    :cond_d
    :goto_1
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    goto :goto_3

    :cond_e
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_f

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->updateDisplayFlash(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mBlackDisplay:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final updateDisplayFlash(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->nonMainScreenMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashColors:[I

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCLIDisplayFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setColor(I)V

    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->layoutFlashTexture(ZZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    aget v2, v3, v4

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setColor(I)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsControlPanelOpened:Z

    invoke-virtual {p0, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->layoutFlashTexture(ZZ)V

    :goto_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    :cond_3
    :goto_2
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v2, 0x12

    invoke-direct {v0, p0, p1, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
