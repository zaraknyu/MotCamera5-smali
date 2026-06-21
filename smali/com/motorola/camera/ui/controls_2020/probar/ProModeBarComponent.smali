.class public final Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;


# static fields
.field public static ENABLE_ID:I

.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final mSupportedSettings:Ljava/util/ArrayList;


# instance fields
.field public isDisabledExposureComp:Z

.field public mAWB:I

.field public mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

.field public mCloseButton:Landroid/widget/ImageButton;

.field public mContext:Landroid/content/Context;

.field public final mEnvInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public mExposureTime:J

.field public mFlagView:Landroid/widget/TextView;

.field public mISO:I

.field public mIntervalDegreeIso:I

.field public mIntervalDegreeShutter:F

.field public mItemDecorator:Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

.field public mItemGap:I

.field public mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public mLastExposureTime:J

.field public mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mResetButton:Landroid/widget/ImageButton;

.field public mSeekBar:Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;

.field public mSettingSize:I

.field public final mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

.field public mValue:Ljava/lang/Object;

.field public final mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/16 p1, 0x8fc

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    const-wide/16 p1, 0x1e

    iput-wide p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    new-instance p1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mEnvInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static final access$getAutoWB(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)Ljava/lang/String;
    .locals 3

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1203cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1203c6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    int-to-double v1, p1

    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkAllValues()Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->isDefaultValue()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static getExposureCompIndexFromWheelPos(F)I
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    const/4 v1, 0x0

    int-to-float v1, v1

    sub-float/2addr p0, v1

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float/2addr p0, v1

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    const-string v3, "getLower(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static getProSettings()V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    const-string v1, "getCurrentCameraType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "MANUAL_FOCUS"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    const-string v5, "WHITE_BALANCE"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    const-string v5, "EXPOSURE_TIME"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    const-string v3, "ISO"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-le v3, v0, :cond_4

    if-eqz v2, :cond_4

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "AE_COMPENSATION"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static isAutoExposureTime()Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAutoISO()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAutoWhiteBalance()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static notifyProModeSlider(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v1, "IS_SELECTED"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final applyValue()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final closeSliderBar()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->checkAllValues()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->notifyProModeSlider(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0373

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->getProSettings()V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;-><init>(Ljava/util/List;Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateItemGap(IZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemGap:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;-><init>(II)V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemDecorator:Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->setRecyclerViewInCenter(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0376

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSeekBar:Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;

    if-eqz v0, :cond_2

    new-instance v1, Landroidx/preference/SeekBarPreference$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/preference/SeekBarPreference$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0375

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSeekBar:Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public final setRecyclerViewInCenter(Landroid/view/View;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v0, v1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v1

    const-string v2, "mEventHandler"

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzko;->getOptionsDisplayWidth(ZLandroid/content/Context;Lcom/motorola/camera/EventListener;)I

    move-result p3

    mul-int/2addr v1, p2

    add-int/lit8 p2, p2, -0x1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemGap:I

    mul-int/2addr p2, p0

    add-int/2addr p2, v1

    sub-int/2addr p3, p2

    const/4 p0, 0x0

    if-lez p3, :cond_1

    if-eqz p1, :cond_2

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p3, p0, p3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 8

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mEnvInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    if-eqz v2, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoWhiteBalance()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoISO()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoExposureTime()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_3

    sget p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    new-instance v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    const/4 p0, -0x1

    sput p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    :cond_4
    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v7, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_d

    const/4 p1, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne p1, p0, :cond_d

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :cond_6
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v0

    if-ne v1, v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->notifyProModeSlider(Ljava/lang/Boolean;)V

    :cond_8
    :goto_0
    invoke-virtual {v6, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v6, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v6, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    :cond_d
    return-void
.end method

.method public final declared-synchronized updateExposureComp(F)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.settings.SettingsManager.Key<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->getExposureCompIndexFromWheelPos(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->applyValue()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION_PRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.settings.SettingsManager.Key<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->applyValue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final updateExposureTime(F)Z
    .locals 8

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.settings.SettingsManager.Key<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    const-string v2, "getCurrentCameraType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const-string v2, "get(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    const/16 v2, 0x8

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    const/16 v5, 0x11

    int-to-float v5, v5

    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mIntervalDegreeShutter:F

    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v6, v5

    sub-float v5, v7, v6

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    add-float/2addr v6, v7

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->applyValue()V

    return v3
.end method

.method public final updateISO(F)Z
    .locals 9

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.settings.SettingsManager.Key<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    const-string v2, "getCurrentCameraType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const-string v2, "get(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    const/16 v3, 0x8

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    const/16 v6, 0x11

    int-to-float v6, v6

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mIntervalDegreeIso:I

    int-to-float v7, v7

    add-int/lit8 v8, v5, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v7, v6

    sub-float v6, v8, v7

    cmpl-float v6, p1, v6

    if-lez v6, :cond_0

    add-float/2addr v7, v8

    cmpg-float v6, p1, v7

    if-gtz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    if-eq p1, v0, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->applyValue()V

    return v2
.end method

.method public final updateItemGap(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemGap:I

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v0, v1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v1

    const-string v2, "mEventHandler"

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzko;->getOptionsDisplayWidth(ZLandroid/content/Context;Lcom/motorola/camera/EventListener;)I

    move-result p2

    mul-int/2addr v1, p1

    add-int/lit8 v0, p1, -0x1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemGap:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    sub-int v2, p2, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    if-le p1, v2, :cond_2

    sub-int/2addr p2, v1

    div-int/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemGap:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateMF(I)Z
    .locals 12

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "null cannot be cast to non-null type com.motorola.camera.settings.SettingsManager.Key<kotlin.Any?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    const-string v5, "get(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v6, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v8, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v9, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    if-eqz p1, :cond_1

    const/16 v11, 0x11

    if-ge p1, v11, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    int-to-float p1, p1

    const/high16 v1, 0x41880000    # 17.0f

    sub-float/2addr p1, v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr p1, v1

    const/16 v1, 0x53

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float/2addr v3, p1

    new-instance p1, Ljava/math/BigDecimal;

    float-to-double v10, v3

    invoke-direct {p1, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v11, 0x8

    if-gt p1, v11, :cond_2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    iget-object p1, v4, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v3, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iput-object v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p1, v4, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v3, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    :goto_2
    move p1, v0

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v3

    goto :goto_4

    :cond_6
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-float p1, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_7
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpg-float p1, p1, v7

    if-nez p1, :cond_4

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->applyValue()V

    if-nez p1, :cond_9

    iget-object p0, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq v8, p0, :cond_8

    goto :goto_5

    :cond_8
    return v3

    :cond_9
    :goto_5
    return v0
.end method

.method public final updateSeekBarLayout(I)V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSeekBar:Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->setCurrentKey(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSeekBar:Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v4, "mName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x53

    const/4 v8, 0x1

    const-string v9, "null cannot be cast to non-null type kotlin.Int"

    const-string v10, "get(...)"

    const/4 v11, 0x0

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v12, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    if-ne v5, v8, :cond_1

    const/4 v5, 0x0

    sub-float v5, v12, v5

    sub-float/2addr v12, v4

    int-to-float v4, v7

    mul-float/2addr v12, v4

    div-float/2addr v12, v5

    int-to-float v4, v6

    add-float/2addr v12, v4

    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v11

    :goto_0
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v12, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    move v4, v11

    goto :goto_1

    :cond_2
    int-to-float v4, v4

    const/16 v5, 0x8fc

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v5, v7

    mul-float/2addr v4, v5

    const/16 v5, 0x1450

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    :cond_3
    :goto_1
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v12, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "getCurrentCameraType(...)"

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v4

    int-to-float v12, v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    div-float/2addr v12, v14

    iput v12, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mIntervalDegreeShutter:F

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v12, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v12, v16, v14

    if-nez v12, :cond_4

    move v4, v11

    goto :goto_2

    :cond_4
    int-to-float v12, v6

    iget v14, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mIntervalDegreeShutter:F

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, v8

    int-to-float v4, v4

    mul-float/2addr v14, v4

    add-float/2addr v14, v12

    float-to-int v4, v14

    :cond_5
    :goto_2
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v12, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-int/2addr v7, v12

    iput v7, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mIntervalDegreeIso:I

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    iget v7, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mIntervalDegreeIso:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, v8

    mul-int/2addr v4, v7

    add-int/lit8 v11, v4, 0x11

    :goto_3
    move v4, v11

    :cond_7
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    const-string v6, "getLower(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v4, v3, v4

    :cond_8
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_9
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSeekBar:Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;

    if-eqz v2, :cond_a

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->selectorDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateTextFlag(Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;)V

    return-void
.end method

.method public final updateTextFlag(Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->isDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0604a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f060405

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final updateWhiteBalance(I)Z
    .locals 10

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.settings.SettingsManager.Key<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8fc

    if-eqz p1, :cond_4

    const/16 v8, 0x11

    if-ge p1, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sub-int/2addr p1, v8

    mul-int/lit16 p1, p1, 0x1450

    div-int/lit8 p1, p1, 0x53

    add-int/2addr p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v6

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->applyValue()V

    if-nez p1, :cond_3

    iget-object p0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq v4, p0, :cond_2

    goto :goto_1

    :cond_2
    return v6

    :cond_3
    :goto_1
    return v5

    :cond_4
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mValue:Ljava/lang/Object;

    const/16 p0, 0x8

    if-gt p1, p0, :cond_5

    iget-object p0, v1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_5
    move p0, v6

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq v4, p0, :cond_6

    return v5

    :cond_6
    return v6
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
