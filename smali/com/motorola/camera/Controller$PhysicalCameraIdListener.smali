.class public final Lcom/motorola/camera/Controller$PhysicalCameraIdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine$MultiCameraListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivePhysicalCameraIdChanged(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    sget-object p2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_FLASH_FOR_UW:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p2, p2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p2, Ljava/util/EnumSet;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUWAutoNVForSATDisabled()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentWidePhysicalId(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->setupFlash(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->updateRecyclerViewAsync()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mPhysicalCameraId:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO_SUPPORT_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    goto/16 :goto_7

    :cond_3
    if-eqz p2, :cond_4

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    :goto_1
    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mPhysicalCameraId:Ljava/lang/String;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mPhysicalCameraId:Ljava/lang/String;

    const-string v2, "-1"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move p2, v0

    goto :goto_3

    :cond_6
    :goto_2
    move p2, v1

    :goto_3
    if-eqz p1, :cond_7

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    if-eqz p2, :cond_8

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v1, v0

    :goto_5
    invoke-static {p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->access$showAMSToast(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;Z)V

    goto :goto_6

    :cond_9
    invoke-static {p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->access$showAMSToast(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;Z)V

    :goto_6
    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mPhysicalCameraId:Ljava/lang/String;

    :cond_a
    :goto_7
    sget-object p2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_FLASH_FOR_UW:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p2, p2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p2, Ljava/util/EnumSet;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUWAutoNVForSATDisabled()Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p2

    if-eqz p2, :cond_d

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentWidePhysicalId(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->setupFlash(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    :cond_d
    :goto_8
    return-void

    :pswitch_1
    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast p0, Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->initData(Ljava/lang/String;Z)V

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
