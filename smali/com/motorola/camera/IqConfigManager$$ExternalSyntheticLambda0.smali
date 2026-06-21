.class public final synthetic Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mCurrentLux:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mCctMap:Ljava/util/TreeMap;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashColors:[I

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_CCT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v5, v4, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mCct:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aget v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v6

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    if-eqz v3, :cond_1

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    if-nez v5, :cond_1

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setColor(I)V

    :cond_1
    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mCct:I

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_4

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v4, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mTurnOnLux:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->enableDisplayFlash(Z)V

    :cond_3
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mTurnOffLux:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    if-nez v1, :cond_4

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisabledRunnable:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :pswitch_1
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x437a0000    # 250.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->isLowLight:Z

    if-nez v1, :cond_6

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f1205e1

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v4, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    const/4 v5, 0x2

    iput v5, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    const/16 v5, 0xbb8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-static {v3, v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->isLowLight:Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->isLowLight:Z

    :cond_6
    :goto_0
    return-void

    :pswitch_2
    check-cast v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isLowLux:Z

    :cond_8
    return-void

    :pswitch_3
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLowLightThreshold:I

    int-to-float v2, v2

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_a

    iget-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByLux:Z

    if-nez v3, :cond_a

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByLux:Z

    goto :goto_2

    :cond_a
    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByLux:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByLux:Z

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByRemoveStates:Z

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    :goto_2
    return-void

    :pswitch_4
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->MOTION_CAPTURE:Lcom/motorola/camera/AppFeatures$Feature;

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->showLowLight(Z)V

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->showLowLight(Z)V

    :cond_e
    :goto_3
    return-void

    :pswitch_5
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    const-string v2, "get(...)"

    const-string v3, "getCurrentCameraType(...)"

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_12

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v8, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mLastExposureTime:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_12

    iput-wide v4, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mLastExposureTime:J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v7

    :goto_4
    if-ge v10, v9, :cond_11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    if-ne v10, v11, :cond_f

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move/from16 p0, v6

    goto :goto_5

    :cond_f
    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    add-long/2addr v13, v11

    int-to-long v11, v6

    div-long/2addr v13, v11

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    move/from16 p0, v6

    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    add-long v17, v17, v15

    div-long v17, v17, v11

    cmp-long v11, v13, v4

    if-gtz v11, :cond_10

    cmp-long v11, v4, v17

    if-gez v11, :cond_10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_5

    :cond_10
    move v10, v6

    move/from16 v6, p0

    goto :goto_4

    :cond_11
    move/from16 p0, v6

    const-wide/16 v4, 0x0

    :goto_5
    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v4

    iget-wide v8, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_13

    iput-wide v4, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    goto :goto_6

    :cond_12
    move/from16 p0, v6

    :cond_13
    :goto_6
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x640

    if-ge v4, v6, :cond_14

    goto :goto_7

    :cond_14
    add-int/2addr v4, v5

    :goto_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v7

    :goto_8
    if-ge v5, v3, :cond_17

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_15

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_9

    :cond_15
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    add-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    add-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    if-gt v8, v4, :cond_16

    if-ge v4, v10, :cond_16

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_9

    :cond_16
    move v5, v9

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_9
    iget v3, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    if-eq v3, v2, :cond_18

    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    :cond_18
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_CCT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    if-eq v2, v1, :cond_19

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    :cond_19
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_b

    :cond_1a
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mLuxThreshold:I

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->autoSetting:Ljava/util/HashMap;

    int-to-float v2, v2

    cmpl-float v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_1b

    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mKeepHideByLux:Z

    if-nez v4, :cond_1b

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    iput-boolean v6, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mKeepHideByLux:Z

    goto :goto_a

    :cond_1b
    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1c

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mKeepHideByLux:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    iput-boolean v5, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mKeepHideByLux:Z

    :cond_1c
    :goto_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostProcSupported()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LL_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->NIGHT_VISION_LL_ANI_LUX:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    long-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1d

    move v5, v6

    :cond_1d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1e
    :goto_b
    return-void

    :pswitch_7
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->MASTER_SENSOR_NAME:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->activeSensor:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1f
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->ADRC_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_c

    :cond_20
    move-object v2, v4

    :goto_c
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->adrcGain:Landroidx/lifecycle/MutableLiveData;

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->isz:Landroidx/lifecycle/MutableLiveData;

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->bYHistAva:Landroidx/lifecycle/MutableLiveData;

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->isoGain:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aperture:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_21
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_CCT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbCct:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_22
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneFlicker:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_23
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_DECISION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbDecision:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_24
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->exposureTime:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_25
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusDistance:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_26
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/2addr v3, v8

    int-to-float v3, v3

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v3, v8

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_d

    :cond_27
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_28
    :goto_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->getBYHistAva()F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->getBYHistAva()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_e

    :cond_29
    invoke-virtual {v6, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_e
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v6, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->luxIdx:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_f

    :cond_2b
    invoke-virtual {v5, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getLightLuxValueFront()F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_2c

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lightLuxValueFront:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getLightLuxValueFront()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getLightLuxValueRear()F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_2d

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lightLuxValueRear:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getLightLuxValueRear()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2d
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v4, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lux:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2e
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->LENS_POSITION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v4, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lensPosition:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2f
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewFrameTime:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_30
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->antiBandingState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_31
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->ISO100_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v4, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    int-to-float v4, v4

    mul-float/2addr v2, v4

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->realGain:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_32
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->THERMAL_LEVEL_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->thermal:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_33
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_HDR_STATE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->videoHdrState:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_34
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PREVIEW_SCENE_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewScene:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_35
    return-void

    :pswitch_8
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda17;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;F)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    :cond_36
    return-void

    :pswitch_9
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOn()Z

    move-result v1

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_37
    return-void

    :pswitch_a
    check-cast v0, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-boolean v2, v0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iput v1, v3, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    iget-boolean v4, v3, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eqz v4, :cond_38

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_38

    iget-boolean v1, v3, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_10

    :catchall_0
    move-exception v0

    goto :goto_11

    :cond_38
    :goto_10
    monitor-exit v2

    goto :goto_12

    :goto_11
    monitor-exit v2

    throw v0

    :cond_39
    :goto_12
    return-void

    :pswitch_b
    check-cast v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->lastLux:F

    :cond_3a
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-float v2, v2

    iput v2, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->exposure:F

    :cond_3b
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->iso:I

    :cond_3c
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->aperture:F

    :cond_3d
    return-void

    :pswitch_c
    check-cast v0, Lcom/motorola/camera/IqConfigManager;

    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v4, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v3, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    goto :goto_13

    :catchall_1
    move-exception v0

    goto :goto_14

    :cond_3e
    :goto_13
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v4, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v3, v3, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    :cond_3f
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    iput v3, v0, Lcom/motorola/camera/IqConfigManager;->mLastExposureTime:F

    :cond_40
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, v0, Lcom/motorola/camera/IqConfigManager;->mLastIso:F

    :cond_41
    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/GestureRecognizer;->updateEnvironmentInfo(Landroid/os/Bundle;)V

    monitor-exit v2

    return-void

    :goto_14
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
