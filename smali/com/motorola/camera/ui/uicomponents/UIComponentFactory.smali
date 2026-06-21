.class public abstract Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getComponents([Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;ILandroid/view/View;Lcom/motorola/camera/ui/UIManager;)Ljava/util/ArrayList;
    .locals 10

    iget-object v0, p3, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_14

    aget-object v4, p0, v3

    iget v5, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mOrder:I

    if-eq v5, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mParentResId:Ljava/lang/Integer;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v8

    :goto_1
    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;

    invoke-direct {v8, p3}, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_1
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;

    invoke-direct {v8, p3}, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_2
    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ControlBarToastManager;

    invoke-direct {v4, v8, p3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    move-object v8, v4

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v9, 0x1

    packed-switch v4, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionFHDSupported()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitModeSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_b
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING:Z

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-nez v4, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_d
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :cond_4
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_SLOW_MOTION:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v4, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_DOCUMENT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v4, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_13
    sget-object v4, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->SEGMENTATION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v4, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    sget-boolean v4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_15
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Ljava/lang/Object;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v8, v7, p3, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_19
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SCENE_OPT_IN:Z

    if-nez v4, :cond_5

    goto/16 :goto_2

    :cond_5
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_1a
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Ljava/lang/Object;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v8, v7, p3, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Ljava/lang/Object;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v8, v7, p3, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_2

    :pswitch_1d
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->animationTextView:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v4, v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->buttonControlAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v7, 0x12

    invoke-direct {v4, v7, v8}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v4, v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->modeSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    goto/16 :goto_2

    :pswitch_1e
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_6

    goto/16 :goto_2

    :cond_6
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_1f
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_20
    sget-object v4, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v4, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_22
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_23
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/PerfectMeUIComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PerfectMeUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_24
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoTimelapseSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    const/4 v4, 0x4

    new-array v4, v4, [I

    iput-object v4, v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->mTimeLapseIcons:[I

    goto/16 :goto_2

    :pswitch_26
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MOTION_CAPTURE:Z

    if-eqz v4, :cond_12

    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_2

    :cond_7
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_27
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY:Z

    if-nez v4, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-nez v4, :cond_9

    goto/16 :goto_2

    :cond_9
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_28
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_29
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_2a
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isCliWithUltraWide(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v4, :cond_a

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :cond_a
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_2c
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_2

    :cond_b
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getHasCutout()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_2e
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_2f
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-static {v4}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v8, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_30
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_31
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_2

    :cond_c
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_32
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_33
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_34
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_35
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_36
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AUTO_ENHANCE:Z

    if-nez v4, :cond_d

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI_PERSONAL_COLOR_TONE:Z

    if-eqz v4, :cond_12

    :cond_d
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_37
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_38
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_39
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_3a
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_3b
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Ljava/lang/Object;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v8, v7, p3, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_2

    :pswitch_3c
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto/16 :goto_2

    :pswitch_3d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v4, :cond_e

    goto/16 :goto_2

    :cond_e
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto :goto_2

    :pswitch_3e
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v4, :cond_f

    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_2

    :cond_f
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto :goto_2

    :pswitch_3f
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    iput-boolean v9, v8, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->switchAllowed:Z

    goto :goto_2

    :pswitch_40
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-nez v4, :cond_10

    goto :goto_2

    :cond_10
    new-instance v8, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_41
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    iput-boolean v9, v8, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->needUpdateVerticalPosition:Z

    goto :goto_2

    :pswitch_42
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_43
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v4, :cond_11

    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_2

    :cond_11
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto :goto_2

    :pswitch_44
    invoke-virtual {p3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitModeSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto :goto_2

    :pswitch_45
    new-instance v8, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    goto :goto_2

    :pswitch_46
    new-instance v8, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-direct {v8, v7, p3}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V

    :cond_12
    :goto_2
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->init$1()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Lcom/motorola/camera/Util;->isKpiWarning(J)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " loading dur:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UIComponentFactory"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_14
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
