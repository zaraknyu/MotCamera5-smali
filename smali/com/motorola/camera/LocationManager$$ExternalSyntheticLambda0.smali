.class public final synthetic Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;->$r8$classId:I

    const/16 v1, 0x15

    const/16 v2, 0x16

    const/16 v3, 0x8

    const-string v4, "getValue(...)"

    const/4 v5, 0x5

    const/16 v6, 0x9

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object p0, p0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->onSettingChanged(Lcom/motorola/camera/settings/Setting;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDismissCurrentTooltip()V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisabledRunnable:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda5;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v9, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    :cond_1
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->SETUP:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mPreviousSettingValue:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mPreviousSettingValue:Ljava/lang/Integer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v1, :cond_4

    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v10, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsActivePhotoOn:Z

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->startEngine()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->stopEngine()V

    if-eqz v1, :cond_a

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    iput-boolean v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsActivePhotoOn:Z

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->startEngine()V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->activePhotoUpdateLock()V

    :cond_a
    :goto_2
    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v8}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isPreviewSwitched$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->isDisplayFlash:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->isDisplayFlash:Z

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "COMPOSE_GALLERY_DISPLAY_FLASH_UI_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;->viewModeChangeListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    if-eqz p0, :cond_d

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onChanged(Ljava/lang/Object;)V

    :cond_d
    :goto_3
    return-void

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    goto :goto_4

    :cond_e
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :cond_f
    :goto_4
    return-void

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v10

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    if-eqz p1, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v10}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    return-void

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v0, v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_11
    return-void

    :pswitch_9
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v10}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSupportMotionCapture()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p1, :cond_13

    invoke-virtual {p0, p1, v10}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->registerListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_13
    :goto_5
    return-void

    :pswitch_a
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, v7}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_c
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getLengthTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_14

    const p1, 0x7f060042

    goto :goto_6

    :cond_14
    const p1, 0x7f0604a2

    :goto_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_15
    return-void

    :pswitch_d
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateSceneDetection()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility$1()V

    return-void

    :pswitch_e
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    iput-boolean v10, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->shouldHide:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v7}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_16
    iput-boolean v9, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->shouldHide:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->shouldShow()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v9}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_17
    :goto_7
    return-void

    :pswitch_f
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v7}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_18
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    if-nez p1, :cond_19

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v10}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_19
    :goto_8
    return-void

    :pswitch_10
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_11
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v5}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_1a
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v8}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_9
    return-void

    :pswitch_12
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->audioLensSwitchSetting:Lcom/motorola/camera/settings/Setting;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    invoke-direct {v0, v2, p0, p1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1c
    return-void

    :pswitch_13
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1, p1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :pswitch_14
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onSettingChanged:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_15
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    if-nez p1, :cond_1d

    iput-boolean v10, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    :cond_1d
    return-void

    :pswitch_16
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v6}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_17
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-eqz v0, :cond_1e

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    goto :goto_a

    :cond_1e
    move v0, v9

    :goto_a
    if-eq v0, v7, :cond_1f

    move v0, v10

    goto :goto_b

    :cond_1f
    move v0, v9

    :goto_b
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-eqz p1, :cond_20

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    if-ne p1, v8, :cond_20

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->firstShowEffect:Z

    if-eqz p1, :cond_20

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1205d3

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v10, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mCenterRotation:Z

    iput-boolean v9, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mLandscapeAlignCenter:Z

    invoke-static {v1, p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v9, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->firstShowEffect:Z

    :cond_20
    return-void

    :pswitch_18
    check-cast p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    iget-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mEnable:Z

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_e

    :cond_21
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v8}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_22
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_23
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0, v5}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_25
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_26
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0, v3}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_27
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, v6}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_28
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_EYE_ENLARGE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_29
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_2a
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_2b
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_2c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_2d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_2e
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 p1, 0x2d

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_2f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH_PARAMS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_30
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, v7}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_31
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_32
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_33
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_34
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_35
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_36
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_37
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_38
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto/16 :goto_d

    :cond_39
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_3a
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_3b
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 p1, 0x1b

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_3c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_3d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 p1, 0x1d

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_3e
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_3f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_40
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_41
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_42
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto/16 :goto_c

    :cond_43
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_44
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 p1, 0x25

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_45
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheFileNameKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/16 p1, 0x26

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheEffectsModeKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_47
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_TETRAS_PORTRAIT_REPAIR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto/16 :goto_e

    :cond_48
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 p1, 0x2a

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto :goto_e

    :cond_49
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto :goto_e

    :cond_4a
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_BST_DSLR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/16 p1, 0x2c

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto :goto_e

    :cond_4b
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto :goto_e

    :cond_4c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto :goto_e

    :cond_4d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_HW_FLICLER_DETECT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/16 p1, 0x31

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto :goto_e

    :cond_4e
    :goto_c
    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    goto :goto_e

    :cond_4f
    :goto_d
    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    :cond_50
    :goto_e
    return-void

    :pswitch_19
    check-cast p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleGestureAutoCapture()V

    goto :goto_10

    :cond_51
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_f

    :cond_52
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSmileDetection()V

    goto :goto_10

    :cond_53
    :goto_f
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSceneDetection()V

    :cond_54
    :goto_10
    return-void

    :pswitch_1a
    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_57

    if-eq p1, v10, :cond_57

    if-eq p1, v8, :cond_55

    if-eq p1, v7, :cond_57

    goto :goto_11

    :cond_55
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result p1

    if-eqz p1, :cond_56

    iput-boolean v10, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    goto :goto_11

    :cond_56
    iput-boolean v9, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->resetState$1()V

    goto :goto_11

    :cond_57
    iput-boolean v9, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->resetState$1()V

    :goto_11
    return-void

    :pswitch_1b
    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mListView:Landroid/widget/ListView;

    if-nez p0, :cond_58

    goto :goto_13

    :cond_58
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    if-eqz p0, :cond_5b

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5a

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_12

    :cond_5a
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_5b

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_5b
    :goto_13
    return-void

    :pswitch_1c
    check-cast p0, Lcom/motorola/camera/LocationManager;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5c

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v10}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/LocationManager;I)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_14

    :cond_5c
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v8}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/LocationManager;I)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
