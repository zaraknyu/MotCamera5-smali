.class public final Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;
.super Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;


# instance fields
.field public final mActivePhotoSettingListener:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAudioZoomEnabled:Z

.field public final mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

.field public mPreviousValue:I

.field public mWasBeautySliderVisible:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mWasBeautySliderVisible:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mPreviousValue:I

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mActivePhotoSettingListener:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_FOV_SWITCH:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoFovSwitch:Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_2
    return-void
.end method

.method public static isVideoPausedState(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static showSwitchToast()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f1205eb

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method


# virtual methods
.method public final getBackSwitchBundle(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;F)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CAMERA_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "ZOOM_SEGMENT"

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "IS_MANUAL_JUMP"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumpAfterRecording:Z

    const-string p1, "PREVIOUS_ZOOM"

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    cmpl-float p0, p4, p0

    if-lez p0, :cond_1

    const-string p0, "IS_SHORTCUT_JUMP"

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_1
    return-object v0
.end method

.method public final getCameraType()Lcom/motorola/camera/settings/CameraType;
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0
.end method

.method public final getDragBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    :goto_0
    const-string v2, "CAMERA_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "VALUE"

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScrollOffset:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getUnitSegWidth()I

    move-result v1

    const-string v3, "ZOOM_SEG_UNIT"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "VIDEO_RECORDING"

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "ENABLE"

    invoke-virtual {v0, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "SAME_ID"

    invoke-virtual {v0, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ZoomComponent"

    return-object p0
.end method

.method public final getZoomSegmentOfCameraType(FLcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    sget-object p0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-gez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, v1, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    :cond_2
    sget-object p0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0

    :cond_3
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_4

    sget-boolean p0, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isContinuousKnifeSwitch()Z
    .locals 3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getZoomSegmentOfCameraType(FLcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    if-eq v0, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onSATFallback(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroIsMacro:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAllowShowAutoMacro:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    if-eqz p2, :cond_1

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const p2, 0x7f1205e8

    invoke-static {p2, p0, p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_1
    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onVideoStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eq p2, p1, :cond_0

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getPhysicalType(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, p2, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->CLI_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, p2, :cond_2

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    sget-object p3, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, p3, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    :goto_0
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final onZoomCompleted()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->clearZslCaptureMap()V

    :cond_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_ZOOM_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onZoomStateChange(FLcom/motorola/camera/settings/CameraType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomEnabled()Z

    move-result p1

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioZoomFactor(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final refreshAfterKnifeSwitchWhileRecording()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    iput-object v0, v1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    iget-object v1, v1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Landroidx/compose/runtime/Latch;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleExtra()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v3

    if-nez v3, :cond_1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    return-void
.end method

.method public final registerActivePhotoSettingChangeListener(Z)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDisableCameraTypesForActivePhoto()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mActivePhotoSettingListener:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :cond_1
    return-void
.end method

.method public final setAudioNoiseReduction(Z)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "camera_audio_record_nr="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setAudioZoomFactor(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audio_zoom_enable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";zoom_factor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    :cond_0
    return-void
.end method

.method public final setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v8, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v7

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v11, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v13, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getMaxUiRatio()I

    move-result v14

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v15}, Landroidx/compose/runtime/Latch;->getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;

    move-result-object v15

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v16

    move/from16 v17, v9

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v9, -0x1

    if-eqz v16, :cond_e

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eq v2, v3, :cond_6

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne v2, v1, :cond_2

    sget-boolean v1, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v12, v9

    :cond_4
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_5
    move v7, v9

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$1;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v3, :cond_5

    if-eq v1, v5, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    move v7, v9

    move v10, v7

    :cond_8
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mArcZoomBarSegments:[F

    if-eqz v2, :cond_d

    array-length v4, v2

    if-le v4, v3, :cond_d

    if-eq v7, v9, :cond_9

    goto :goto_3

    :cond_9
    if-eq v10, v9, :cond_a

    move v7, v10

    goto :goto_3

    :cond_a
    move v7, v12

    :goto_3
    array-length v3, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_d

    aget v4, v2, v5

    mul-float v4, v4, v17

    float-to-int v4, v4

    if-lt v4, v7, :cond_b

    if-ge v4, v14, :cond_b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    if-lt v4, v14, :cond_c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(Ljava/util/ArrayList;)V

    goto/16 :goto_c

    :cond_e
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eq v9, v3, :cond_18

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v9

    if-ne v9, v5, :cond_f

    sget-object v9, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto/16 :goto_a

    :cond_f
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v9

    const/4 v3, 0x3

    if-ne v9, v3, :cond_10

    sget-boolean v3, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    if-eqz v3, :cond_12

    :cond_11
    const/4 v12, -0x1

    :cond_12
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v7, -0x1

    :cond_13
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v8, v7, v10, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v7, :cond_14

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result v7

    if-eqz v7, :cond_15

    :cond_14
    const/4 v7, 0x1

    goto :goto_8

    :cond_15
    const/4 v7, 0x0

    :goto_8
    if-eq v9, v5, :cond_17

    if-nez v3, :cond_17

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_16
    const/4 v3, 0x3

    if-lt v9, v3, :cond_1c

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/16 v5, 0x9

    invoke-static {v2, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    invoke-static {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v5, Landroid/util/Range;

    invoke-direct {v5, v6, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v4, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v4, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v5, v6, v4}, [Landroid/util/Range;

    move-result-object v1

    invoke-interface {v3, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto :goto_c

    :cond_17
    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v6, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Landroid/util/Range;

    invoke-direct {v5, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v3, v5}, [Landroid/util/Range;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto :goto_c

    :cond_18
    :goto_a
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$1;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1b

    if-eq v1, v5, :cond_1b

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1a

    const/4 v3, 0x5

    if-eq v1, v3, :cond_19

    goto :goto_b

    :cond_19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v3, -0x1

    invoke-interface {v1, v7, v3, v3, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_b

    :cond_1a
    const/4 v3, -0x1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v3, v3, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_b

    :cond_1b
    const/4 v3, -0x1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v3, v10, v3, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    :goto_b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v6, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v3}, [Landroid/util/Range;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    :cond_1c
    :goto_c
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomSegment;)V

    :cond_1d
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setZoomCompStyle(Z)V

    return-void
.end method

.method public final setupZoomTextures()V
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomTexture(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    iput-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAllowShowAutoMacro:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomDisabledInUltraResMode()Z

    move-result v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v7, 0x0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_1
    invoke-virtual {v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->getActiveZoomEntityMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->hideZoomTextures(Z)V

    return-void
.end method

.method public final showAudioZoomToast()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mReadyShowToast:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v2, 0x7f1205cd

    invoke-static {v2, v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mReadyShowToast:Z

    :cond_1
    return-void
.end method

.method public final showLabelMode()Z
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 13

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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enteringZoomState(Lcom/google/zxing/Result;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_73

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-ne p1, v2, :cond_73

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleTexVisibleType(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showSegmentLabel(ZZ)V

    goto/16 :goto_19

    :catchall_0
    move-exception p1

    goto/16 :goto_1a

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleTexVisibleType(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showSegmentLabel(ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->exitingZoomState()V

    goto/16 :goto_19

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->registerActivePhotoSettingChangeListener(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto/16 :goto_19

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v3, v5, v6}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    goto/16 :goto_19

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_8

    move-object v2, v1

    goto :goto_1

    :cond_8
    const-string v2, "USE_CASE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/UseCase;

    :goto_1
    if-eqz p1, :cond_9

    const-string v7, "IS_MANUAL_JUMP"

    invoke-virtual {p1, v7, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v3

    goto :goto_2

    :cond_9
    move v7, v4

    :goto_2
    if-eqz p1, :cond_a

    const-string v8, "IS_SHORTCUT_JUMP"

    invoke-virtual {p1, v8, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    move v8, v3

    goto :goto_3

    :cond_a
    move v8, v4

    :goto_3
    if-eqz p1, :cond_b

    const-string v9, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {p1, v9, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    move v9, v3

    goto :goto_4

    :cond_b
    move v9, v4

    :goto_4
    if-nez p1, :cond_c

    move-object v10, v1

    goto :goto_5

    :cond_c
    const-string v10, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/settings/CameraType;

    :goto_5
    if-nez p1, :cond_d

    move-object v11, v1

    goto :goto_6

    :cond_d
    const-string v11, "ZOOM_SEGMENT"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/utility/ZoomSegment;

    :goto_6
    if-nez p1, :cond_e

    move p1, v5

    goto :goto_7

    :cond_e
    const-string v12, "PREVIOUS_ZOOM"

    invoke-virtual {p1, v12, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    :goto_7
    if-eqz v11, :cond_f

    iput-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v11

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v2, v12, :cond_1f

    if-eqz v7, :cond_1c

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumpAfterRecording:Z

    if-eqz v2, :cond_11

    cmpl-float v2, p1, v5

    if-lez v2, :cond_11

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumpAfterRecording:Z

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v6

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v1

    :goto_8
    mul-float/2addr v1, p1

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_11
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    if-eq p1, v2, :cond_13

    sget-object v7, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p1, v7, :cond_14

    :cond_13
    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v7, :cond_14

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    div-float/2addr v1, p1

    div-float p1, v6, v1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_14
    sget-object v7, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p1, v7, :cond_16

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    iget-object v8, v8, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-nez p1, :cond_15

    goto :goto_9

    :cond_15
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    :goto_9
    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->shouldDoBackMainZoomMapping(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManualWide(F)F

    move-result p1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_16
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-eq v10, p1, :cond_17

    if-eqz v9, :cond_19

    :cond_17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isSegmentSlider()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    if-eq p1, v1, :cond_18

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p1, v1, :cond_19

    :cond_18
    if-eqz v11, :cond_1b

    :cond_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    if-eq p1, v7, :cond_1b

    if-ne p1, v2, :cond_1a

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq v0, v1, :cond_1b

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-eq v0, v1, :cond_1b

    :cond_1a
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p1, v1, :cond_2d

    sget-boolean p1, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz p1, :cond_2d

    :cond_1b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_1c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v1

    if-eqz v1, :cond_2d

    if-eqz v8, :cond_1d

    cmpl-float v1, p1, v5

    if-lez v1, :cond_1d

    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_1d
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result p1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_1e
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, p1, :cond_2d

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v10, p1, :cond_2d

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingWideMaxRealZoomX()F

    move-result p1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_1f
    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v2, v1, :cond_22

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v1, :cond_22

    :cond_20
    cmpl-float v1, p1, v5

    if-lez v1, :cond_22

    invoke-static {v0, v4}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v1

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    div-float v7, v6, p1

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_21

    cmpg-float v1, v7, v2

    if-gtz v1, :cond_21

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-static {v7}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManualUw(F)F

    move-result p1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_22
    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v2, p1, :cond_28

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoMode()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v1, :cond_23

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_23
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isCliCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_2d

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v1, :cond_2d

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1, v4}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result p1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_24
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-nez p1, :cond_25

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-nez p1, :cond_25

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_2d

    :cond_25
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_26

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_a

    :cond_26
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_27

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_a

    :cond_27
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    :goto_a
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_28
    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v2, p1, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoMode()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithTele()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_29

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float p1, v6, p1

    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto :goto_c

    :cond_29
    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v2, p1, :cond_2d

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_2d

    :cond_2a
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result p1

    if-eqz p1, :cond_2b

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    array-length v2, p1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_2c

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_b

    :cond_2c
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    :goto_b
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    div-float p1, v6, p1

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    :cond_2d
    :goto_c
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_FOV_SWITCH:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_2e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_d

    :cond_2e
    move v3, v4

    :goto_d
    if-eqz v3, :cond_73

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2f

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_2f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoFovSwitch:Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;

    if-eqz p1, :cond_73

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->isMultiFace()Z

    move-result p1

    if-eqz p1, :cond_73

    :cond_2f
    invoke-static {v6, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto/16 :goto_19

    :cond_30
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_LP_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleProSliderListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mShowFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SCALE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScaleListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DV_POSTURE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDvPostureChangeListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mApplyPreviewDoneListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateTexturesForFold()V

    goto :goto_e

    :cond_31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updateLayoutSize(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updatePostTranslation(Z)V

    :goto_e
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_32
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    goto/16 :goto_19

    :cond_33
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v7, 0x42c80000    # 100.0f

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_34

    monitor-exit p0

    return-void

    :cond_34
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->registerActivePhotoSettingChangeListener(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->registerSubFsmListeners$4(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    iget-object p1, p1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xb

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aput v5, p1, v0

    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasOriginalSegment()Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-static {v1}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v1

    aput v1, p1, v0

    :cond_35
    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasWideSegment()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-static {v1}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v1

    aput v1, p1, v0

    :cond_36
    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasStandardSegment()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    invoke-static {v1}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v1

    aput v1, p1, v0

    :cond_37
    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasCloseUpSegment()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    invoke-static {v1}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v1

    aput v1, p1, v0

    goto :goto_10

    :cond_38
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result p1

    if-eqz p1, :cond_39

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    array-length v1, p1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aput v6, p1, v0

    :cond_3a
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleExtra()Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getTeleExtraValue()F

    move-result v1

    aput v1, p1, v0

    :cond_3b
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleUltra()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActionShotZoomSegments:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_3c

    goto :goto_f

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_f
    aput v5, p1, v1

    goto :goto_10

    :cond_3d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aput v6, p1, v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getSelfieFovSwitchValue()F

    move-result v0

    aput v0, p1, v3

    :cond_3e
    :goto_10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Latch;->setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateToggleTextureBgStyle()V

    :cond_3f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Landroidx/compose/runtime/Latch;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->resetActiveSegment()V

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleExtra()Z

    move-result v1

    if-nez v1, :cond_41

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v1, :cond_40

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result v1

    if-nez v1, :cond_41

    :cond_40
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v1

    if-nez v1, :cond_41

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    :cond_41
    invoke-virtual {p0, v0, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mEnableHaptic:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    goto/16 :goto_19

    :cond_42
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto/16 :goto_19

    :cond_43
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_46

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInCaptureState()Z

    move-result p1

    if-nez p1, :cond_44

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    :cond_44
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showAudioZoomToast()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eqz p1, :cond_45

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->sendBackSwitchEvent(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;F)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    :cond_45
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateKnifeSwitchStateWhileEnteringIdle()V

    goto/16 :goto_19

    :cond_46
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldShowAllUi(Lcom/google/zxing/Result;)Z

    move-result v5

    if-nez v5, :cond_72

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_72

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v8}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_47

    goto/16 :goto_18

    :cond_47
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setClickable(Z)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    goto/16 :goto_19

    :cond_48
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_71

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v10}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_71

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v11}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    goto/16 :goto_17

    :cond_49
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6e

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p1, v11}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p1, v11}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p1, v10}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p1, v10}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto/16 :goto_16

    :cond_4a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    goto/16 :goto_15

    :cond_4b
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v9

    if-eqz v9, :cond_4e

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "HISTORY_STATE"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->isVideoPausedState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4d

    :cond_4c
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4d
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateKnifeSwitchStateWhileEnteringIdle()V

    goto/16 :goto_19

    :cond_4e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleProSliderListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mShowFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SCALE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScaleListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->DV_POSTURE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDvPostureChangeListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mApplyPreviewDoneListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->registerSubFsmListeners$4(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->registerActivePhotoSettingChangeListener(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mPerfectMeStateListener:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    const/16 p1, 0x64

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioZoomFactor(FZ)V

    :cond_4f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioNoiseReduction(Z)V

    :cond_50
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsDvPosture:Z

    goto/16 :goto_19

    :cond_51
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    goto/16 :goto_19

    :cond_52
    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isTimerCapture(Lcom/google/zxing/Result;)Z

    move-result p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_53

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    :cond_53
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    goto/16 :goto_19

    :cond_54
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {p1, v5}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {p1, v8}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    goto/16 :goto_14

    :cond_55
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_73

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto/16 :goto_19

    :cond_56
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    goto/16 :goto_19

    :cond_57
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VIDEO_START_FAILURE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_58

    monitor-exit p0

    return-void

    :cond_58
    :try_start_3
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    :cond_59
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/Latch;->setVideoRecording(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getMaxUiRatio()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_5a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomEnabled()Z

    move-result p1

    if-eqz p1, :cond_5b

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    int-to-float v0, v0

    div-float v6, v0, v7

    :cond_5b
    invoke-virtual {p0, v6, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioZoomFactor(FZ)V

    :cond_5c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseCancellationEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioNoiseReduction(Z)V

    goto/16 :goto_19

    :cond_5d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_13

    :cond_5e
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_12

    :cond_5f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_11

    :cond_60
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    :cond_61
    const-class p1, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayoutForRecording(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    goto/16 :goto_19

    :cond_62
    :goto_11
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    goto/16 :goto_19

    :cond_63
    :goto_12
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getMetadata()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ANALYTICS_AUDIO_ZOOM"

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_64
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mRecordingZoomChanges:I

    goto/16 :goto_19

    :cond_65
    :goto_13
    sget-boolean v0, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithTele()Z

    move-result v0

    if-eqz v0, :cond_66

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v1

    mul-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_66

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumpAfterRecording:Z

    :cond_66
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_67

    const-string v0, "ANALYTICS_VIDEO_ZOOM_CHANGES"

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mRecordingZoomChanges:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_67
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Latch;->setVideoRecording(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->resetActiveSegment()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {p0, v0, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_68
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_69

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    :cond_69
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_6a

    invoke-virtual {p0, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioZoomFactor(FZ)V

    :cond_6a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioNoiseReduction(Z)V

    :cond_6b
    const-class p1, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayoutForRecording(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    goto/16 :goto_19

    :cond_6c
    :goto_14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_19

    :cond_6d
    :goto_15
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->refreshAfterKnifeSwitchWhileRecording()V

    goto :goto_19

    :cond_6e
    :goto_16
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p1, v9}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-virtual {p1, v11}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    :cond_6f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->refreshAfterKnifeSwitchWhileRecording()V

    :cond_70
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showAudioZoomToast()V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mWasBeautySliderVisible:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v2, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_19

    :cond_71
    :goto_17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setClickable(Z)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mWasBeautySliderVisible:Z

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    goto :goto_19

    :cond_72
    :goto_18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_73
    :goto_19
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x40000000    # 2.0f
        0x40c00000    # 6.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v3

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->checkHapticFeedback(ILcom/motorola/camera/settings/CameraType;Z)V

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    if-nez v3, :cond_7

    int-to-float p3, p1

    div-float/2addr p3, v4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v7, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v9, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v8, v8, v10

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v5, v5, v10

    const/4 v10, 0x0

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v5

    if-eqz v5, :cond_1

    cmpl-float v5, p3, v0

    if-ltz v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomSegment;)V

    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showSwitchToast()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    cmpl-float v3, v3, v10

    const v5, 0x3c23d70a    # 0.01f

    if-eqz v3, :cond_4

    cmpl-float v3, p3, v6

    if-ltz v3, :cond_4

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomSegment;)V

    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v3, :cond_2

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    sub-float/2addr v0, v5

    cmpl-float v0, p3, v0

    if-nez v0, :cond_5

    :cond_3
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showSwitchToast()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_5

    cmpl-float v0, p3, v8

    if-ltz v0, :cond_5

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomSegment;)V

    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-float/2addr v6, v5

    cmpl-float v0, p3, v6

    if-nez v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showSwitchToast()V

    :cond_5
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->isKnifeSwitchState(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getZoomSegmentOfCameraType(FLcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p0, p2, p3, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    :cond_7
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    int-to-float p3, p1

    div-float/2addr p3, v4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    invoke-virtual {p2, p3, v1}, Landroidx/compose/runtime/Latch;->updateZoomX(FZ)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomValueX$1(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setValue(ILjava/lang/String;)V

    return-void
.end method
