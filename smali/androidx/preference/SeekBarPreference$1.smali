.class public final Landroidx/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onStartTrackingTouch$com$motorola$camera$ui$controls_2020$sliderbar$LongExposureComponent$inflateViewStub$3$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStartTrackingTouch$com$motorola$camera$ui$controls_2020$sliderbar$PortraitBokehSliderBar$inflateViewStub$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStartTrackingTouch$com$motorola$camera$ui$controls_2020$sliderbar$SelectColorSliderBar$inflateViewStub$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStartTrackingTouch$com$motorola$camera$ui$controls_2020$sliderbar$TimeLapseSliderBar$inflateViewStub$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStartTrackingTouch$com$motorola$camera$ui$controls_2020$sliderbar$VideoPortraitComponent$inflateViewStub$1$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$motorola$camera$ui$controls_2020$sliderbar$LongExposureComponent$inflateViewStub$3$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$motorola$camera$ui$controls_2020$sliderbar$SelectColorSliderBar$inflateViewStub$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$motorola$camera$ui$controls_2020$sliderbar$TimeLapseSliderBar$inflateViewStub$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10

    iget v0, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "get(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->blurValue:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {p3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f12058a

    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "get(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    const/16 p3, 0x1e

    int-to-float p3, p3

    div-float/2addr p3, p1

    float-to-int p1, p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%dx"

    invoke-static {p3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->updateTextPosition()V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    mul-int/lit8 p3, p2, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->seekText:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->onBokehLevelChanged(I)V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekText:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LP_WATER_SHUTTER_SPEED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    :goto_1
    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_a

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LP_TRAFFIC_SHUTTER_SPEED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    :goto_2
    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_c

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LP_LIGHT_SHUTTER_SPEED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    :goto_3
    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_e

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LP_STAR_SHUTTER_SPEED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekSlider:Landroid/widget/SeekBar;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_f
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->expText:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeedText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    return-void

    :pswitch_4
    const-string/jumbo p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    goto/16 :goto_b

    :cond_11
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    iget-object v3, v2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateMF(I)Z

    move-result v4

    goto :goto_5

    :cond_12
    move v4, v0

    :goto_5
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateWhiteBalance(I)Z

    move-result v4

    :cond_13
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_18

    int-to-float v5, p2

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateExposureTime(F)Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_16

    :goto_6
    if-nez v8, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_19

    :cond_16
    invoke-static {v7, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_7

    :cond_17
    iget-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    if-eqz v7, :cond_19

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    goto :goto_7

    :cond_18
    move v5, v0

    :cond_19
    :goto_7
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    int-to-float v5, p2

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateISO(F)Z

    move-result v5

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v7

    if-eqz v7, :cond_1d

    if-eqz v5, :cond_1d

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_1a

    goto :goto_8

    :cond_1a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_1c

    :goto_8
    if-nez v8, :cond_1b

    goto :goto_9

    :cond_1b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_1d

    :cond_1c
    invoke-static {v7, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1d
    :goto_9
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateExposureComp(F)Z

    move-result v4

    :cond_1e
    if-nez v4, :cond_1f

    if-eqz v5, :cond_20

    :cond_1f
    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PRO_SLIDER_BAR_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p2, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateTextFlag(Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz p2, :cond_20

    sget v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-virtual {p2, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_20
    if-eqz v5, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureCompDisabled()Z

    move-result p2

    if-eqz p2, :cond_22

    iget-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    if-nez p2, :cond_22

    const/high16 p2, 0x42480000    # 50.0f

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateExposureComp(F)Z

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz p2, :cond_21

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_21
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    goto :goto_b

    :cond_22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isISOAuto()Z

    move-result p2

    if-eqz p2, :cond_24

    :cond_23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result p2

    if-nez p2, :cond_25

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isISOAuto()Z

    move-result p2

    if-eqz p2, :cond_25

    :cond_24
    move p2, p1

    goto :goto_a

    :cond_25
    move p2, v0

    :goto_a
    if-eqz p2, :cond_27

    iget-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    if-eqz p2, :cond_27

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz p2, :cond_26

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    sub-int/2addr v1, p1

    invoke-virtual {p2, v1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_26
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    :cond_27
    :goto_b
    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/SeekBarPreference;

    if-eqz p3, :cond_29

    iget-boolean p3, p0, Landroidx/preference/SeekBarPreference;->mUpdatesContinuously:Z

    if-nez p3, :cond_28

    iget-boolean p3, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez p3, :cond_29

    :cond_28
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    goto :goto_c

    :cond_29
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    add-int/2addr p2, p1

    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_2a

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget v0, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/SeekBarPreference;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    iget v0, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->preProgress:I

    if-eq p1, v0, :cond_2

    int-to-float v3, p1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v0, v3, :cond_2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->shouldModeSwitch:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    :cond_4
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->preProgress:I

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    :pswitch_0
    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->onBokehLevelStopChanged()V

    :cond_6
    :pswitch_2
    return-void

    :pswitch_3
    const-string/jumbo p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/SeekBarPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_7

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
