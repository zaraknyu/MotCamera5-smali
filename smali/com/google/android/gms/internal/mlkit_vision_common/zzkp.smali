.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final configIntListComponent(Landroidx/preference/ListPreference;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 6

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    const-string v1, "getCurrentCameraType(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const v3, 0x7f120477

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v4, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "collect(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    iget-object p1, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public static final configSwitchPreferenceCompat(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 3

    if-eqz p0, :cond_14

    if-nez p3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    const-string v0, "getCurrentCameraType(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result p3

    iget-boolean v0, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz p3, :cond_10

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v2

    goto/16 :goto_1

    :cond_2
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result p3

    if-nez p3, :cond_3

    goto/16 :goto_1

    :cond_3
    move v2, v1

    goto/16 :goto_1

    :cond_4
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result v2

    goto/16 :goto_1

    :cond_5
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v2

    goto/16 :goto_1

    :cond_6
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result v2

    goto/16 :goto_1

    :cond_7
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FPS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsSupport(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p3

    if-nez p3, :cond_10

    sget-boolean p3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    if-eqz p3, :cond_3

    goto/16 :goto_1

    :cond_8
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result v2

    goto/16 :goto_1

    :cond_9
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v2

    goto/16 :goto_1

    :cond_a
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    sget-object p3, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {p3}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v2

    goto :goto_1

    :cond_b
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AI_LENS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    sget-object p3, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    invoke-virtual {p3}, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->isAiLensAvailable()Z

    move-result v2

    goto :goto_1

    :cond_c
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUwSATFallbackSupported()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSSupportedLaunchType()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_d
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_e
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v2

    goto :goto_1

    :cond_f
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_10
    :goto_1
    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p4

    if-nez p4, :cond_11

    iput-boolean v1, p0, Landroidx/preference/Preference;->mPersistent:Z

    :cond_11
    iget-object p4, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz p1, :cond_13

    iget-object p3, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_13

    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_13
    if-eqz p2, :cond_14

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method
